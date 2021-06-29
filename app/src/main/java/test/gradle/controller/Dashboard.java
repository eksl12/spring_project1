package test.gradle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//excel
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Cell;

@Controller
public class Dashboard {

    private static final String VIEW_PATH = "dashboard/";

    @RequestMapping( value = "/dashboard", method = RequestMethod.GET )
    public String dashboard(Model model) {
        return VIEW_PATH + "dashboard";
    }

    @RequestMapping( value = "/dashboard2", method = RequestMethod.GET )
    public String dashboard2(Model model) {
        return VIEW_PATH + "dashboard2";
    }

    @RequestMapping( value = "/excel/download", method = RequestMethod.GET)
    public void excelDownload(HttpServletResponse response) throws IOException {
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("시트1");
        Row row = null;
        Cell cell = null;
        int rowNum = 0;

        row = sheet.createRow(rowNum++);
        cell = row.createCell(0);
        cell.setCellValue("번호");
        cell = row.createCell(1);
        cell.setCellValue("이름");
        cell = row.createCell(2);
        cell.setCellValue("번호");

        for (int i = 0; i < 3; i++) {
            row = sheet.createRow(rowNum++);
            cell = row.createCell(0);
            cell.setCellValue(i);
            cell = row.createCell(1);
            cell.setCellValue("이름" + i);
            cell = row.createCell(2);
            cell.setCellValue("010-0000-000" + i);
        }

        //response.setContentType("ms-vnd/excel");
        //response.setHeader("Content-Disposition", "attachment;filename=example.xlsx");
        response.setContentType("application/download;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=example.xlsx");
        response.setHeader("Content-Transfer-Encoding", "binary");

        wb.write(response.getOutputStream());
        wb.close();
    }
}