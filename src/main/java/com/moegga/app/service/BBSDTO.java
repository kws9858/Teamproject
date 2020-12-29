package com.moegga.app.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BBSDTO {

String bbsNo;	
String title;
String contents;
String meetingNo;
String id;
String division;
String subCategoryNO;
Date bbsPostdate;

}
