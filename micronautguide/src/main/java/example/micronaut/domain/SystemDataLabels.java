package example.micronaut.domain;

import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.MappedProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.UUID;

// lobmok
@Data
@NoArgsConstructor
@AllArgsConstructor
@MappedEntity
public class SystemDataLabels {
    @Id
    @GeneratedValue( GeneratedValue.Type.AUTO)
    private UUID systemDataLabelsId;

    @NotNull @NotBlank
    private UUID systemId;

    @NotNull @NotBlank
    private String systemName;

    @NotNull @NotBlank
    private UUID dataLabelTypeId;

    @NotNull @NotBlank
    private String dataLabelTypeName;

    @NotNull @NotBlank
    private UUID dataLabelId;

    @NotNull @NotBlank @MappedProperty
    private String dataLabelTxt;

    @NotNull @NotBlank
    private Integer displayOrderNum;



//
//    @Override
//    public String toString() {
//        return "Genre{" +
//                "id=" + id +
//                ", name='" + name + '\'' +
//                '}';
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
}
