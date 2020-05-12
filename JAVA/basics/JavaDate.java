package basics;

import java.time.*;
import java.time.format.DateTimeFormatter;

// LocalDate, (yyyy-MM-dd)
// LocalTime, (HH-mm-ss.zzz)
// LocalDateTime, (yyyy-MM-ddTHH-mm-ss.zzz)
// DateTimeFormatter, formata as datas/horários
public class JavaDate {
    public static void main(String[] args) {
        LocalDateTime myDateObj = LocalDateTime.now();
        System.out.println("LocalDateTime: " + myDateObj);

        // letras maiúsculas ou minúsculas não interferiram na formatação
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String formattedDate = myDateObj.format(myFormatObj);
        System.out.println("Após formatação: " + formattedDate);
    }
}