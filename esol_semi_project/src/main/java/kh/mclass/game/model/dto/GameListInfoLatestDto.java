package kh.mclass.game.model.dto;

public class GameListInfoLatestDto {
	private int gameId;
	private String gameTitle;
	private int gamePrice;
	private String gameTag;
	@Override
	public String toString() {
		return "GameListInfoLatestDto [gameId=" + gameId + ", gameTitle=" + gameTitle + ", gamePrice=" + gamePrice
				+ ", gameTag=" + gameTag + ", gameGrade=]";
	}
	public GameListInfoLatestDto(int gameId, String gameTitle, int gamePrice, String gameTag) {
		super();
		this.gameId = gameId;
		this.gameTitle = gameTitle;
		this.gamePrice = gamePrice;
		this.gameTag = gameTag;
	}
	public int getGameId() {
		return gameId;
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
