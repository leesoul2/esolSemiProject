package kh.mclass.game.dto;

public class GameInfoDto {
	private String gameTitle;
	private int gamePrice;
	private String gameTag;
	@Override
	public String toString() {
		return "GameInfoDto [gameTitle=" + gameTitle + ", gamePrice=" + gamePrice + ", gameTag=" + gameTag + "]";
	}
	public GameInfoDto(String gameTitle, int gamePrice, String gameTag) {
		super();
		this.gameTitle = gameTitle;
		this.gamePrice = gamePrice;
		this.gameTag = gameTag;
	}
	public String getGameTitle() {
		return gameTitle;
	}
	public int getGamePrice() {
		return gamePrice;
	}
	public String getGameTag() {
		return gameTag;
	}
	
	
	
}
