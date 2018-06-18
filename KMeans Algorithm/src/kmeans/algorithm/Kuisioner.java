/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kmeans.algorithm;

/**
 *
 * @author root
 */
public class Kuisioner {
    private String kode ;
    private String mata_kuliah;
    private String kelas;
    private String pengajar;
    private String skor_kuisioner;
    private String rataan_nilai;
    private String rataan_kehadiran;
    private double norm_skor_kuisioner;
    private double norm_rataan_nilai;
    private double norm_rataan_kehadiran;
    private String kluster;

    public Kuisioner() {
    }
    
    public Kuisioner(String kode, String mata_kuliah, String kelas, String pengajar, String skor_kuisioner, String rataan_nilai, String rataan_kehadiran, double norm_skor_kuisioner, double norm_rataan_nilai, double norm_rataan_kehadiran) {
        this.kode = kode;
        this.mata_kuliah = mata_kuliah;
        this.kelas = kelas;
        this.pengajar = pengajar;
        this.skor_kuisioner = skor_kuisioner;
        this.rataan_nilai = rataan_nilai;
        this.rataan_kehadiran = rataan_kehadiran;
        this.norm_skor_kuisioner = norm_skor_kuisioner;
        this.norm_rataan_nilai = norm_rataan_nilai;
        this.norm_rataan_kehadiran = norm_rataan_kehadiran;
    }
    public String getKode() {
        return kode;
    }

    public void setKode(String kode) {
        this.kode = kode;
    }

    public String getMata_kuliah() {
        return mata_kuliah;
    }

    public void setMata_kuliah(String mata_kuliah) {
        this.mata_kuliah = mata_kuliah;
    }

    public String getKelas() {
        return kelas;
    }

    public void setKelas(String kelas) {
        this.kelas = kelas;
    }

    public String getPengajar() {
        return pengajar;
    }

    public void setPengajar(String pengajar) {
        this.pengajar = pengajar;
    }

    public String getSkor_kuisioner() {
        return skor_kuisioner;
    }

    public void setSkor_kuisioner(String skor_kuisioner) {
        this.skor_kuisioner = skor_kuisioner;
    }

    public String getRataan_nilai() {
        return rataan_nilai;
    }

    public void setRataan_nilai(String rataan_nilai) {
        this.rataan_nilai = rataan_nilai;
    }

    public String getRataan_kehadiran() {
        return rataan_kehadiran;
    }

    public void setRataan_kehadiran(String rataan_kehadiran) {
        this.rataan_kehadiran = rataan_kehadiran;
    }

    public double getNorm_skor_kuisioner() {
        return norm_skor_kuisioner;
    }

    public void setNorm_skor_kuisioner(double norm_skor_kuisioner) {
        this.norm_skor_kuisioner = norm_skor_kuisioner;
    }

    public double getNorm_rataan_nilai() {
        return norm_rataan_nilai;
    }

    public void setNorm_rataan_nilai(double norm_rataan_nilai) {
        this.norm_rataan_nilai = norm_rataan_nilai;
    }

    public double getNorm_rataan_kehadiran() {
        return norm_rataan_kehadiran;
    }

    public void setNorm_rataan_kehadiran(double norm_rataan_kehadiran) {
        this.norm_rataan_kehadiran = norm_rataan_kehadiran;
    }

    public String getKluster() {
        return kluster;
    }

    public void setKluster(String kluster) {
        this.kluster = kluster;
    }
            
}
