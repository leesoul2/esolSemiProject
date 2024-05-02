package kh.mclass.game.model.dto;

import java.sql.Timestamp;

public class GameDetailInfoDto {
	private String gameTitle;
	private String gameExp;
	private int gamePrice;
	private int gameTag;
	@Override
	public String toString() {
		return "GameDetailInfoDto [gameTitle=" + gameTitle + ", gameExp=" + gameExp + ", gamePrice=" + gamePrice
				+ ", gameTag=" + gameTag + "]";
	}
	public GameDetailInfoDto(String gameTitle, String gameExp, int gamePrice, int gameTag) {
		super();
		this.gameTitle = gameTitle;
		this.gameExp = gameExp;
		this.gamePrice = gamePrice;
		this.gameTag = gameTag;
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
	public int getGameTag() {
		return gameTag;
	}
	
	
}
