import org.apache.fop.apps.FOPException;

import javax.xml.transform.TransformerException;
import java.io.IOException;

/**
 * Created by Admin on 03.11.2018.
 */
public class Main {
    public static void main( String[] args ) throws TransformerException, IOException, FOPException {
        System.out.println( "Hello World!" );
        final Converter conv = new Converter();
        conv.convertToFO();
        conv.convertToPDF();
    }
}
