package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Pelicula {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String titulo;
	private String genero;
	private String duracion;
	private String sinopsis;
	private String edadMaxima;
	
	@ManyToOne
	private Cartelera cartelera;
	
	public String getEdadMaxima() {
		return edadMaxima;
	}

	public void setEdadMaxima(String edadMaxima) {
		this.edadMaxima = edadMaxima;
	}
	
	public Cartelera getCartelera() {
		return cartelera;
	}

	public void setCartelera(Cartelera cartelera) {
		this.cartelera = cartelera;
	}

	public Long getCodigo() {
		return codigo;
	}
	
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	
	public String getTitulo() {
		return titulo;
	}
	
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String getGenero() {
		return genero;
	}
	
	public void setGenero(String genero) {
		this.genero = genero;
	}
	
	public String getDuracion() {
		return duracion;
	}
	
	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}
	
	public String getSinopsis() {
		return sinopsis;
	}
	
	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}
	
}
