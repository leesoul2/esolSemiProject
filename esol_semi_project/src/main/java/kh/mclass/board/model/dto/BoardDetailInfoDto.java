package kh.mclass.board.model.dto;

public class BoardDetailInfoDto {
	private int memId;
	private String boardTitle;
	private String boardDetail;
	private int playTime;
	private int commentCount;
	private int recCount;
	private int notRecCount;
	private int expressionCount;
	@Override
	public String toString() {
		return "BoardDetailInfoDto [memId=" + memId + ", boardTitle=" + boardTitle + ", boardDetail=" + boardDetail
				+ ", playTime=" + playTime + ", commentCount=" + commentCount + ", recCount=" + recCount
				+ ", notRecCount=" + notRecCount + ", expressionCount=" + expressionCount + "]";
	}
	public BoardDetailInfoDto(int memId, String boardTitle, String boardDetail, int playTime, int commentCount,
			int recCount, int notRecCount, int expressionCount) {
		super();
		this.memId = memId;
		this.boardTitle = boardTitle;
		this.boardDetail = boardDetail;
		this.playTime = playTime;
		this.commentCount = commentCount;
		this.recCount = recCount;
		this.notRecCount = notRecCount;
		this.expressionCount = expressionCount;
	}
	public int getMemId() {
		return memId;
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
	public int getNotRecCount() {
		return notRecCount;
	}
	public int getExpressionCount() {
		return expressionCount;
	}
	
	
	
	
	
	
}
