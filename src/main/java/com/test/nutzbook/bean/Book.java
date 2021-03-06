package com.test.nutzbook.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

import java.util.Date;

/**
 * @author chejingchi
 *         创建时间:16/3/7 上午11:38
 *         项目名称:github-nutz
 * @author 车竞驰
 * @version 1.0
 * @since JDK 1.7
 * 类说明:
 */
@Table("t_book")
public class Book {
    @Id
    private int id;

    @Column
    private String bookCode;
    @Column
    private String bookName;
    @Column
    private String author;
    @Column
    private String publishingHouse;
    @Column
    private int type;

    private String typeName;

    @Column
    private int num;

    @Column
    private int lockNum;

    @Column
    private int canLend;
    @Column
    private String bookBriefIntroduction;
    @Column
    private int pages;
    @Column
    private String version;

    @Column
    private String libraryRow;

    @Column
    private String libraryColumn;

    @Column
    private int price;

    @Column("createTime")
    private Date createTime;

    @Column("updateTime")
    private Date updateTime;

    @Override
    public String toString() {
        return "t_book{" +
                "id=" + id +
                ", bookCode='" + bookCode + '\'' +
                ", bookName='" + bookName + '\'' +
                ", author='" + author + '\'' +
                ", publishingHouse='" + publishingHouse + '\'' +
                ", type=" + type +
                ", num=" + num +
                ", lockNum=" + lockNum +
                ", canLend=" + canLend +
                ", bookBriefIntroduction='" + bookBriefIntroduction + '\'' +
                ", pages=" + pages +
                ", version='" + version + '\'' +
                ", libraryRow='" + libraryRow + '\'' +
                ", libraryColumn='" + libraryColumn + '\'' +
                ", price='" + price + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookCode() {
        return bookCode;
    }

    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishingHouse() {
        return publishingHouse;
    }

    public void setPublishingHouse(String publishingHouse) {
        this.publishingHouse = publishingHouse;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getCanLend() {
        return canLend;
    }

    public void setCanLend(int canLend) {
        this.canLend = canLend;
    }

    public String getBookBriefIntroduction() {
        return bookBriefIntroduction;
    }

    public void setBookBriefIntroduction(String bookBriefIntroduction) {
        this.bookBriefIntroduction = bookBriefIntroduction;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getLibraryRow() {
        return libraryRow;
    }

    public void setLibraryRow(String libraryRow) {
        this.libraryRow = libraryRow;
    }

    public String getLibraryColumn() {
        return libraryColumn;
    }

    public void setLibraryColumn(String libraryColumn) {
        this.libraryColumn = libraryColumn;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getLockNum() {
        return lockNum;
    }

    public void setLockNum(int lockNum) {
        this.lockNum = lockNum;
    }
}
