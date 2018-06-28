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
    public static void main(String[] args) {
        // TODO code application logic here
        
        // Generate seluruh kuisioner ke variabel local
        dapatkan_kuisioner();
        
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
        
        //Set seluruh Centroid awal pada data
        set_centroid_awal();
        
        // Tampilkan Data
        tampilkan_seluruh_data();
//        System.out.println(seluruh_kuisioner.get(2).getKode());
    }
    static void set_centroid_awal(){
        for(Kuisioner data : seluruh_kuisioner){
            set_c_terdekat(data);
        }
    }
    static void tampilkan_seluruh_data(){
        int i = 1;
        for(Kuisioner data : seluruh_kuisioner){
            System.out.println(i+" | "+jarak(data, centroid[0])+" | "+jarak(data, centroid[1])+" | "+jarak(data, centroid[2])+" | "+data.getCentroid_ke()+" | ");
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
    
}
