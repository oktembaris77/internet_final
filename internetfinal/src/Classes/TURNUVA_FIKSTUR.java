package Classes;

public class TURNUVA_FIKSTUR {
	private int takim1id;
	private int takim2id;
	public TURNUVA_FIKSTUR() {
		
	}
	
	public TURNUVA_FIKSTUR(int takim1id, int takim2id) {
		this.takim1id = takim1id;
		this.takim2id = takim2id;
	}
	public int getTakim1id() {
		return takim1id;
	}
	public void setTakim1id(int takim1id) {
		this.takim1id = takim1id;
	}
	public int getTakim2id() {
		return takim2id;
	}
	public void setTakim2id(int takim2id) {
		this.takim2id = takim2id;
	}
}
