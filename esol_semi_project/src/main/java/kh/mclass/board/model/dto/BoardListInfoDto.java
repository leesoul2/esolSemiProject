package kh.mclass.board.model.dto;

public class BoardListInfoDto {
	private String boardTitle;
	private String boardDetail;
	private int playTime;
	private int commentCount;
	private int recCount;
	private int expressionCount;
	@Override
	public String toString() {
		return "boardListInfoDto [boardTitle=" + boardTitle + ", boardDetail=" + boardDetail + ", playTime=" + playTime
				+ ", commentCount=" + commentCount + ", recCount=" + recCount + ", expressionCount=" + expressionCount
				+ "]";
	}
	public BoardListInfoDto(String boardTitle, String boardDetail, int playTime, int commentCount, int recCount,
			int expressionCount) {
		super();
		this.boardTitle = boardTitle;
		this.boardDetail = boardDetail;
		this.playTime = playTime;
		this.commentCount = commentCount;
		this.recCount = recCount;
		this.expressionCount = expressionCount;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public String getBoardDetail() {
		return boardDetail;
	}
	public int getPlayTime() {
		return playTime;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public int getRecCount() {
		return recCount;
	}
	public int getExpressionCount() {
		return expressionCount;
	}
	
	
}