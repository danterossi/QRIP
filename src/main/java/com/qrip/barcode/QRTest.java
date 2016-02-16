package com.qrip.barcode;

import com.google.zxing.*;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Random;

/**
 * Created by ddcdanter on 1/31/15.
 */

public class QRTest {

    public static void main(String[] args) throws WriterException, IOException,NotFoundException {
        String charset = "UTF-8";
        String format = "jpeg";
        String qrCodeData = "http://73.4.133.6:8080/people/person?id=38423";
        Path filePath = Paths.get("QRCode." + format);

        createQRCode(qrCodeData, filePath, charset, 300, 300, format);
    }

    public static void createQRCode(String qrCodeData,Path filePath,String charset,int qrCodeheight,int qrCodewidth,String format)
            throws WriterException, IOException {

        BitMatrix matrix = new MultiFormatWriter().encode(
                new String(qrCodeData.getBytes(), charset),
                BarcodeFormat.QR_CODE,
                qrCodewidth,
                qrCodeheight
        );
        MatrixToImageWriter.writeToPath(matrix, format, filePath);
    }

//    public static String readQRCode(String filePath)
//            throws IOException, NotFoundException {
//
//        BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(
//                new BufferedImageLuminanceSource(
//                        ImageIO.read(new File(filePath)))));
//
//        Result qrCodeResult = new MultiFormatReader().decode(binaryBitmap);
//
//        return qrCodeResult.getText();
//    }

    public static String createData() {
        Random randomInt = new Random(System.currentTimeMillis());
        Integer integer = randomInt.nextInt(Integer.MAX_VALUE);
        if (integer % 2 == 0) {
            return "http://google.com";
        } else if (integer % 3 == 0) {
            return "http://steelers.com";
        } else {
            return "http://www.post-gazette.com/sports/steelers";
        }
    }

}
