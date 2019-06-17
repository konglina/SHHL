package com.guet.init;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
 
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
 
public class ReadExcel {
 
    private HSSFSheet hssfSheet;//.xls
    private XSSFSheet xssfSheet;//.xlsx
    private InputStream in;
    public int getAllRowNumber() {
        return xssfSheet.getLastRowNum();
    }
 
    public String[] readLine(int rowNumber) {
        XSSFRow row = xssfSheet.getRow(rowNumber);
        if (row != null) {
            String[] resultStr = new String[row.getLastCellNum()-1];
            resultStr[0] = String.valueOf(row.getCell(0).getNumericCellValue());
            resultStr[1] = String.valueOf(row.getCell(2).getNumericCellValue());
            return resultStr;
        }
        return null;
    }
 
    public ReadExcel(String excelPath) throws Exception {
        String fileType = excelPath.substring(excelPath.lastIndexOf(".") + 1, excelPath.length());
        in = new FileInputStream(excelPath);
        HSSFWorkbook hssfWorkbook = null;//.xls
        XSSFWorkbook xssfWorkbook = null;//.xlsx
        //���ݺ�׺������ȡ��ͬ���͵�excel
        if (fileType.equals("xls")) {
            hssfWorkbook = new HSSFWorkbook(in);//����ר�Ŷ�ȡ.xls��
        } else if (fileType.equals("xlsx")) {
            xssfWorkbook = new XSSFWorkbook(in);//����ר�Ŷ�ȡ.xlsx��
        } else {
            throw new Exception("�ĵ���ʽ��׺����ȷ!!��");
        }
        /*����Ĭ��ֻ��ȡ�� 1 ��sheet*/
        if (hssfWorkbook != null) {
            this.hssfSheet = hssfWorkbook.getSheetAt(0);
        } else if (xssfWorkbook != null) {
            this.xssfSheet = xssfWorkbook.getSheetAt(0);
        }
    }
    public void closeFileStream()
    {
       try {
		in.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }
}

