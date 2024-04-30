package kh.mclass.game.model.dto;

import java.sql.Timestamp;

public class GameDetailInfoDto {
	private String gameTitle;
	private String gameExp;
	private int gamePrice;
	private Timestamp gameRd;
	@Override
	public String toString() {
		return "gameDetailInfoDto [gameTitle=" + gameTitle + ", gameExp=" + gameExp + ", gamePrice=" + gamePrice
				+ ", gameRd=" + gameRd + "]";
	}
	public GameDetailInfoDto(String gameTitle, String gameExp, int gamePrice, Timestamp gameRd, String gameTag) {
		super();
		this.gameTitle = gameTitle;
		this.gameExp = gameExp;
		this.gamePrice = gamePrice;
		this.gameRd = gameRd;
	}
	public String getGameTitle() {
		return gameTitle;
	}
	public String getGameExp() {
		return gameExp;
	}
	public int getGamePrice() {
		return gamePrice;
	}
	public Timestamp getGameRd() {
		return gameRd;
	}
	
	
}
