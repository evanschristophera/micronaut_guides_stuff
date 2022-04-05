package example.micronaut;

import example.micronaut.domain.SystemDataLabels;
import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Repository;
import io.micronaut.data.exceptions.DataAccessException;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.PageableRepository;
import io.micronaut.transaction.annotation.TransactionalAdvice;

import javax.transaction.Transactional;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.UUID;


/**
 The entity to treat as the root entity for the purposes of querying,
 is established either from the method signature or from the generic
 type parameter specified to the GenericRepository interface.

 The micronaut framework implements this interface at compile time.
 */
@Repository( "de-datasource")
@JdbcRepository(dialect = Dialect.POSTGRES)
@TransactionalAdvice("de-datasource")
public interface SystemDataLabelsRepository extends PageableRepository<SystemDataLabels, UUID>  {

//    SystemDataLabels save(@NotNull @NotBlank String systemName, @NotNull @NotBlank UUID dataLabelTypeId );
//
//
//    @Transactional
//    default SystemDataLabels saveWithException(@NonNull @NotBlank String systemName, @NotNull @NotBlank UUID dataLabelTypeId) {
//        save(systemName, dataLabelTypeId);
//        throw new DataAccessException("test exception");
//    }

    //UUID update(@NonNull @NotNull @Id UUID sysDataLabelId, @NonNull @NotBlank String systemName);
}
