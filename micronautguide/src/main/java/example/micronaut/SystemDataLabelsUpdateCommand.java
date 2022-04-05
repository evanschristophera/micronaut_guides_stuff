package example.micronaut;

import io.micronaut.core.annotation.Introspected;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.UUID;


@Introspected
public class SystemDataLabelsUpdateCommand {
    @NotNull
    private final UUID systemDataLabelId;

    @NotBlank
    private final String systemName;

    public SystemDataLabelsUpdateCommand(UUID dataLabelId, String systemName) {
        this.systemDataLabelId = dataLabelId;
        this.systemName = systemName;
    }

    public UUID getId() {
        return systemDataLabelId;
    }

    public String getName() {
        return systemName;
    }

}