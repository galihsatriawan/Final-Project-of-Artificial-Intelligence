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
public class Ketercapaian {
    private String nama_dosen;
    private String mata_kuliah;
    private String kelas ;
    private String ketercapaian;


    public Ketercapaian() {
    }

    public Ketercapaian(String nama_dosen, String mata_kuliah, String kelas, String ketercapaian) {
        this.nama_dosen = nama_dosen;
        this.mata_kuliah = mata_kuliah;
        this.kelas = kelas;
        this.ketercapaian = ketercapaian;
    }
    public String getNama_dosen() {
        return nama_dosen;
    }

    public void setNama_dosen(String nama_dosen) {
        this.nama_dosen = nama_dosen;
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

    public String getKetercapaian() {
        return ketercapaian;
    }

    public void setKetercapaian(String ketercapaian) {
        this.ketercapaian = ketercapaian;
    }
}
