package com.example.apachefop.service;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FilenameUtils;
import org.apache.fop.apps.Driver;
import org.apache.fop.apps.XSLTInputHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.xml.sax.XMLReader;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
public class PDFService {


    @Value("${pdf.outpath}")
    String outputPath;

    @Value("${pdf.xsl}")
    String xslFile;

    @Value("${pdf.inputpath}")
    String inputPath;


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


    @Async
    public void generatePdfFiles() throws Exception {
        try {
            Driver driver = new Driver();
            ClassPathResource xslResource = new ClassPathResource(xslFile);
            driver.setRenderer(Driver.RENDER_PDF);
            List<File> files = Files.list(Paths.get(inputPath))
                    .map(Path::toFile)
                    .filter(File::isFile)
                    .collect(Collectors.toList());

            for(File file:files) {
                XSLTInputHandler inputHandler = new XSLTInputHandler(file, xslResource.getFile());
                XMLReader parser = inputHandler.getParser();

                driver.setOutputStream(new FileOutputStream(outputPath +FilenameUtils.removeExtension(file.getName())+".pdf"));
                driver.render(parser, inputHandler.getInputSource());
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new Exception("An Error occurred while generating PDF.");
        }finally {
           log.info("Done processing the file .Out put is at ");
        }
    }
}
