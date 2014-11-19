package ReceptionSystem;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.MatOfByte;
import org.opencv.core.MatOfRect;
import org.opencv.core.Point;
import org.opencv.core.Rect;
import org.opencv.core.Scalar;
import org.opencv.highgui.Highgui;
import org.opencv.objdetect.CascadeClassifier;
public class FaceDetection {

    public void detectFace() throws IOException {

      
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
        System.out.println("\nRunning FaceDetector");

        CascadeClassifier faceDetector = new CascadeClassifier("src/haarcascade_frontalface_alt.xml");
        Mat image = Highgui.imread(("camera.jpg"));

        MatOfRect faceDetections = new MatOfRect();
        faceDetector.detectMultiScale(image, faceDetections);

        System.out.println(String.format("Detected %s faces", faceDetections.toArray().length));

        for (Rect rect : faceDetections.toArray()) {
            //Core.rectangle(image, new Point(rect.x, rect.y), new Point(rect.x + rect.width, rect.y + rect.height),
              //      new Scalar(0, 255, 0));
        byte[] data = new byte[image.rows() * image.cols() * (int)(image.elemSize())];
        image.get(0, 0, data);
        if(image.channels() == 3){
            for (int i = 0; i < data.length; i += 3){
                byte temp = data[i];
                data[i] = data[i + 2];
                data[i + 2] = temp;
            }
        }
        BufferedImage buff = new BufferedImage(image.cols(), image.rows(), BufferedImage.TYPE_3BYTE_BGR);
        buff.getRaster().setDataElements(0, 0, image.cols(), image.rows(), data);
        
        //BufferedImage bImage = new BufferedImage(rect.width, rect.height, BufferedImage.TYPE_INT_ARGB_PRE)
        BufferedImage bImage1 = buff.getSubimage(rect.x, rect.y, rect.width, rect.height + 44);
        BufferedImage bImage = new BufferedImage(134,148,BufferedImage.TYPE_3BYTE_BGR);
        Graphics2D g = bImage.createGraphics();
        g.drawImage(bImage1, 0, 0, 134, 148, null);
        g.dispose();
        
        byte[] data1 = ((DataBufferByte)bImage.getRaster().getDataBuffer()).getData();
        Mat outputImage = new Mat(bImage.getHeight(), bImage.getWidth(), CvType.CV_8UC3);
        outputImage.put(0, 0, data1);
        
        Highgui.imencode(".jpg", outputImage, new MatOfByte());
        
        String filename = "ouput.jpg";
        System.out.println(String.format("Writing %s", filename));
        
        File outputfile = new File("output.jpg");
        ImageIO.write(bImage, "jpg", outputfile);
        //Highgui.imwrite(filename, outputImage);
        
        }
        
        
        
        /*MatOfByte mem = new MatOfByte();
        Highgui.imencode(".jpg", image, mem);
        Image im = ImageIO.read(new ByteArrayInputStream(mem.toArray()));
        BufferedImage buff = (BufferedImage) im;
        //im.getScaledInstance(138, 148, Image.SCALE_DEFAULT);
        Graphics k = im.getGraphics();
        BufferedImage cropped = new BufferedImage(k.drawBytes(data, offset, length, x, y));
        Graphics g = cropped.createGraphics();
        g.drawImage(im, 0, 0, null);
        g.dispose();
        
        byte[] data = ((DataBufferByte)cropped.getRaster().getDataBuffer()).getData();
        Mat outputImage = new Mat(cropped.getHeight(),cropped.getWidth(),CvType.CV_8UC3);
        outputImage.put(0, 0, data);
        
        Highgui.imencode(".jpg", outputImage, mem);
        */
        
        
//        BufferedImage originalImage = ImageIO.read(file);
//        BufferedImage resizeImageJpg = resizeImage(originalImage, type, 200, 200);
//        ImageIO.write(resizeImageJpg, "jpg", file); 
//        //createEigenFaceRecogniaer()
    }
    
    
    
    
} 