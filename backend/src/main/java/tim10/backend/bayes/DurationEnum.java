package tim10.backend.bayes;

public enum DurationEnum {
    SHORT(0),
    MEDIUM(1),
    LONG(2);

    public final int index;

    private DurationEnum(int index){
        this.index = index;
    }
}
