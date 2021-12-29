/**
 * Project：linux_99Score
 * Date：2021/12/28
 * Time：16:15
 * Description：TODO
 *
 * @author lmk
 * @version 1.0
 */
public class Book {
    private int id;
    private String name;
    private String fromPlace;
    private String author;

    public Book() {
    }

    public Book(int id, String name, String fromPlace, String author) {
        this.id = id;
        this.name = name;
        this.fromPlace = fromPlace;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFromPlace() {
        return fromPlace;
    }

    public void setFromPlace(String fromPlace) {
        this.fromPlace = fromPlace;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
