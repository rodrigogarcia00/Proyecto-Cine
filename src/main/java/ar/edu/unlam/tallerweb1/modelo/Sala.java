package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sala {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long numero;
	String fila;
	Integer butaca;
	Integer cantidad_maxima;
	
	public Long getNumero() {
		return numero;
	}
	
	public void setNumero(Long numero) {
		this.numero = numero;
	}
	
	public String getFila() {
		return fila;
	}
	
	public void setFila(String fila) {
		this.fila = fila;
	}
	
	public Integer getButaca() {
		return butaca;
	}
	
	public void setButaca(Integer butaca) {
		this.butaca = butaca;
	}
	
	public Integer getCantidad_maxima() {
		return cantidad_maxima;
	}
	
	public void setCantidad_maxima(Integer cantidad_maxima) {
		this.cantidad_maxima = cantidad_maxima;
	}
}
