/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kmeans.algorithm;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kmeans.algorithm.Handler.Database;

/**
 *
 * @author root
 */
public class KMeansAlgorithm {

    /**
     * @param args the command line arguments
     */
    // Penyimpanan Seluruh Data Kuisioner
    static ArrayList<Kuisioner> seluruh_kuisioner = new ArrayList<>();
    static Kuisioner centroid[] = new Kuisioner[3];
    static Kuisioner centroid_prev[] = new Kuisioner[3];
    static Kumpulan_kuisioner grup_centroid[] = new Kumpulan_kuisioner[3];
    static int iterasi= 0;
    public static void main(String[] args) {
        // TODO code application logic here
        
        // Generate seluruh kuisioner ke variabel local
        dapatkan_kuisioner();
        
        
        //Hapus data ketercapaian
        hapus_data_db();
        // Random 3 Centroid , ketiga nya harus beda
//        int pc1 = (int) Math.round(Math.random())%180;
//        int pc2 = (int) Math.round(Math.random())%180;
//        int pc3 = (int) Math.round(Math.random())%180;
//        System.out.println(pc1+"-"+pc2+"-"+pc3);
        // Check pertama
//        while(pc2==pc1){
//            pc2 = (int) Math.round(Math.random()%180);
//            System.out.println("2 -- "+pc2 +"--"+pc1);
//        }
//        while((pc3==pc1)||(pc3==pc2)){
//            pc3 = (int) Math.round(Math.random()%180);
//        }
        int pc1=5,pc2=100,pc3=150;
        // Centroid awal
        centroid[0] = seluruh_kuisioner.get(pc1);
        centroid[1] = seluruh_kuisioner.get(pc2);
        centroid[2] = seluruh_kuisioner.get(pc3);
        centroid_prev[0] = new Kuisioner();
        centroid_prev[1] = new Kuisioner();
        centroid_prev[2] = new Kuisioner();
        // Definisi Awal
        grup_centroid[0] = new Kumpulan_kuisioner();
        grup_centroid[1] = new Kumpulan_kuisioner();
        grup_centroid[2] = new Kumpulan_kuisioner();
        //Belum punya kumpulan kuisioner
        grup_centroid[0].kuisioners = new ArrayList<>();
        grup_centroid[1].kuisioners = new ArrayList<>();
        grup_centroid[2].kuisioners = new ArrayList<>();
        
        //Set seluruh Centroid awal pada data
        set_centroid_tiap_kuisioner();
        
        // Data-data Centroid
        data_centroid(0);
        data_centroid(1);
        data_centroid(2);
        banyak_tiap_centroid(3);
        // Tampilkan Data
        //tampilkan_seluruh_data();
        System.out.println("---------------------------------");
        //Sebelum hitung maka simpan nilai sebelumnya
        isi_prev_centroid();
        hitung_centroid_baru(0);
        hitung_centroid_baru(1);
        hitung_centroid_baru(2);
        set_centroid_tiap_kuisioner();
        System.out.println("Iterasi Ke-"+(++iterasi));
        // Data-data Centroid
        data_centroid(0);
        data_centroid(1);
        data_centroid(2);
        banyak_tiap_centroid(3);
        //tampilkan_seluruh_data();
//        System.out.println(seluruh_kuisioner.get(2).getKode());
        // Selama Previous Centroid belum sama maka lakukan pencarian terus
        while(cari_lagi()){
            System.out.println("---------------------------------");
            //Sebelum hitung maka simpan nilai sebelumnya
            isi_prev_centroid();
            hitung_centroid_baru(0);
            hitung_centroid_baru(1);
            hitung_centroid_baru(2);
            set_centroid_tiap_kuisioner();
            System.out.println("Iterasi Ke-"+(++iterasi));
            // Data-data Centroid
            data_centroid(0);
            data_centroid(1);
            data_centroid(2);
            banyak_tiap_centroid(3);
        }
        buat_list_ketercapaian();
        insert_seluruh_kt_database();
        

    }

    static boolean cari_lagi(){
        boolean skor = centroid_prev[0].getNorm_skor_kuisioner()==centroid[0].getNorm_skor_kuisioner();
        boolean nilai = centroid_prev[0].getNorm_rataan_nilai()==centroid[0].getNorm_rataan_nilai();
        boolean kehadiran = centroid_prev[0].getNorm_rataan_kehadiran()==centroid[0].getNorm_rataan_kehadiran();
        boolean cari = !(skor && nilai && kehadiran);
        return cari;
    }

    static void isi_prev_centroid(){
        centroid_prev[0].setNorm_skor_kuisioner(centroid[0].getNorm_skor_kuisioner());
        centroid_prev[0].setNorm_rataan_kehadiran(centroid[0].getNorm_rataan_kehadiran());
        centroid_prev[0].setNorm_rataan_nilai(centroid[0].getNorm_rataan_nilai());
        
    }
 
    static void banyak_tiap_centroid(int banyak_centroid){
        for(int i= 0;i<banyak_centroid;i++){
            System.out.println("Banyak anak di Centroid "+(i+1)+" : "+grup_centroid[i].kuisioners.size());
        }
    }

    static void data_centroid(int ke){
        System.out.println("Centroid ke : "+ke);
        System.out.println("Skor Kuisioner      : "+centroid[ke].getNorm_skor_kuisioner());
        System.out.println("Rataan Nilai        : "+centroid[ke].getNorm_rataan_nilai());
        System.out.println("Rataan Kehadiran    : "+centroid[ke].getNorm_rataan_kehadiran());
    }
    static void set_centroid_tiap_kuisioner(){
        //hapus data Kumpulan kuisioner di grup
        grup_centroid[0].kuisioners.clear();
        grup_centroid[1].kuisioners.clear();
        grup_centroid[2].kuisioners.clear();
        for(Kuisioner data : seluruh_kuisioner){
            set_c_terdekat(data);
        }
    }
    static void hitung_centroid_baru(int centroid_ke){
        // Hitung rata2 anaknya
        double skor_kuisioner = 0;
        double rataan_nilai = 0;
        double rataan_kehadiran = 0;
        for(Kuisioner kuis : grup_centroid[centroid_ke].kuisioners){
            skor_kuisioner += kuis.getNorm_skor_kuisioner();
            rataan_nilai += kuis.getNorm_rataan_nilai();
            rataan_kehadiran += kuis.getNorm_rataan_kehadiran();
        }
        skor_kuisioner = skor_kuisioner/grup_centroid[centroid_ke].kuisioners.size();
        rataan_nilai = rataan_nilai/grup_centroid[centroid_ke].kuisioners.size();
        rataan_kehadiran = rataan_kehadiran/grup_centroid[centroid_ke].kuisioners.size();
        
        // Set centroid baru 
        centroid[centroid_ke].setNorm_skor_kuisioner(skor_kuisioner);
        centroid[centroid_ke].setNorm_rataan_nilai(rataan_nilai);
        centroid[centroid_ke].setNorm_rataan_kehadiran(rataan_kehadiran);
    }
    static void tampilkan_seluruh_data(){
        int i = 1;
        for(Kuisioner data : seluruh_kuisioner){
            System.out.println(i+"||"+data.getNorm_skor_kuisioner()+"~"+data.getNorm_rataan_nilai()+"~"+data.getNorm_rataan_kehadiran()+"||            "+" | "+jarak(data, centroid[0])+" | "+jarak(data, centroid[1])+" | "+jarak(data, centroid[2])+" | "+data.getCentroid_ke()+" | ");
            i++;
        }
    }
    // Method penghitung jarak dua data
    static double jarak(Kuisioner a,Kuisioner b){
        double jarak_2 = 0;
            
            double x1 = a.getNorm_skor_kuisioner();
            double y1 = a.getNorm_rataan_nilai();
            double z1 = a.getNorm_rataan_kehadiran();
        
            double x2 = b.getNorm_skor_kuisioner();
            double y2 = b.getNorm_rataan_nilai();
            double z2 = b.getNorm_rataan_kehadiran();
            
            jarak_2 = Math.sqrt((Math.pow(x1-x2, 2))+(Math.pow(y1-y2, 2))+(Math.pow(z1-z2, 2)));
            
        return jarak_2;
    }
    // Method untuk memilih centroid yang terdekat
    static Kuisioner set_c_terdekat(Kuisioner data){
        double jarak_c[] = new double[3];
        jarak_c[0] = jarak(data,centroid[0]);
         jarak_c[1] = jarak(data,centroid[1]);
        jarak_c[2] = jarak(data,centroid[2]);
        
        //Define Awal
        Kuisioner centroid_t = centroid[0];
        double jarak_terdekat = jarak_c[0];
        int pos_c = 0;
        if(jarak_terdekat>jarak_c[1]){
            pos_c = 1;
        } 
        if(jarak_terdekat > jarak_c[2]){
            pos_c = 2;
        }
        
        jarak_terdekat = jarak_c[pos_c];
        centroid_t = centroid[pos_c];
        
        
        
        // Set Centroidnya
        data.setCentroid(centroid_t);
        data.setJarak_c(jarak_terdekat);
        data.setCentroid_ke(pos_c);
        
        // Masukkan kedalam grup anak centroid
        grup_centroid[pos_c].kuisioners.add(data);
        
        //Jika dibutuhkan 
        return centroid_t;
    }
    static void dapatkan_kuisioner(){
        String sql = "SELECT * FROM `dummy kuisioner`";
        ResultSet hasil = Database.select(sql);
    
        String kode ;
        String mata_kuliah;
        String kelas;
        String pengajar;
        String skor_kuisioner;
        String rataan_nilai;
        String rataan_kehadiran;
        double norm_skor_kuisioner;
        double norm_rataan_nilai;
        double norm_rataan_kehadiran;
        String kluster;
        try {
            while(hasil.next()){
                // Mendapatkan seluruh data
                kode =  hasil.getString("Kode");
                mata_kuliah = hasil.getString("Mata Kuliah");
                kelas = hasil.getString("Kelas");
                pengajar = hasil.getString("Pengajar");
                skor_kuisioner = hasil.getString("Skor Kuisioner");
                rataan_nilai = hasil.getString("Rataan Nilai");
                rataan_kehadiran = hasil.getString("Rataan Kehadiran (%)");
                norm_skor_kuisioner = hasil.getDouble("Skor_Kuisioner");
                norm_rataan_nilai = hasil.getDouble("Rataan_Nilai");
                norm_rataan_kehadiran = hasil.getDouble("Rataan_Kehadiran");
                kluster = hasil.getString("Kluster");
                
                //Membuat objek
                Kuisioner new_kuisioner = new Kuisioner(kode,mata_kuliah,kelas,
                        pengajar,skor_kuisioner,rataan_nilai,rataan_kehadiran,
                        norm_skor_kuisioner,norm_rataan_nilai,norm_rataan_kehadiran,kluster);
                
                // Tambahkan ke list 
                seluruh_kuisioner.add(new_kuisioner);
                
            }
        } catch (Exception ex) {
            Logger.getLogger(KMeansAlgorithm.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }
        
    }

    static ArrayList<Ketercapaian> list_ketercapaian = new ArrayList<>();
    public static void buat_list_ketercapaian(){
        for(Kuisioner kui: seluruh_kuisioner){
            String nama_dos = kui.getPengajar();
            String mk = kui.getMata_kuliah();
            String kelas = kui.getKelas();
            String ketercapaian = kui.getCentroid_ke()+"";
            Ketercapaian new_kt = new Ketercapaian(nama_dos, mk, kelas, ketercapaian);
            list_ketercapaian.add(new_kt);
        }
    }
 
    public static void insert_seluruh_kt_database(){
        for(Ketercapaian kt: list_ketercapaian){
            insert_ketercapaian(kt);
        }
    }
    
    public static void insert_ketercapaian(Ketercapaian kc){
        String sql="INSERT INTO tb_ketercapaian VALUES(\""+kc.getNama_dosen()+
                "\",\""+kc.getMata_kuliah()+"\",\""+kc.getKelas()+"\",\""+kc.getKetercapaian()+"\")";
        Database.update(sql);
    }

    public static void hapus_data_db(){
        String sql ="DELETE FROM tb_ketercapaian";
        Database.update(sql);
    }
}
