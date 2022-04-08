package com.example.apachefop.controller;

import com.example.apachefop.service.PDFService;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.xml.sax.XMLReader;

import java.io.File;
import java.io.FileOutputStream;

@RestController
@RequestMapping("/api/pdf")
@Slf4j
public class PDFController {

    @Autowired PDFService service;
    @PostMapping
    public void createPDF(@RequestParam("pdfFileName") String pdfFileName,@RequestParam("xmlFile")String xmlFile){
        try {
            service.generatePdfFile(xmlFile,pdfFileName);
        }catch (Exception e){
            log.error("Could not process the file {}",e.getMessage());
        }
    }

    @GetMapping
    public void createPDFFiles() {
        try{
            service.generatePdfFiles();
        }catch (Exception e){
            log.error("Could not process the request");
        }
    }



}
