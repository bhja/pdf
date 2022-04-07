package com.example.apachefop.service;

import lombok.extern.slf4j.Slf4j;
import org.apache.fop.apps.Driver;
import org.apache.fop.apps.XSLTInputHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.xml.sax.XMLReader;

import java.io.File;
import java.io.FileOutputStream;

@Service
@Slf4j
public class PDFService {


    @Value("${pdf.outpath}")
    String outputPath;

    @Value("${pdf.xsl}")
    String xslFile;


    public void generatePdfFile(String xmlfile,  String pdffile) throws Exception {
        try {
            Driver driver = new Driver();
            ClassPathResource xslResource = new ClassPathResource(xslFile);
            driver.setRenderer(Driver.RENDER_PDF);
            XSLTInputHandler inputHandler = new XSLTInputHandler(new File(xmlfile), xslResource.getFile());

            XMLReader parser = inputHandler.getParser();
            driver.setOutputStream(new FileOutputStream(outputPath+pdffile));
            driver.render(parser, inputHandler.getInputSource());
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new Exception("An Error occurred while generating PDF.");
        }finally {
            log.info("Done processing the file .Out put is at {}",outputPath+pdffile);
        }
    }

}
