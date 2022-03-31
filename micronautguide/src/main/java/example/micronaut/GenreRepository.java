package example.micronaut;

import example.micronaut.domain.Genre;
import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.exceptions.DataAccessException;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.PageableRepository;

import javax.transaction.Transactional;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@JdbcRepository(dialect = Dialect.POSTGRES)
/**
 Genre, the entity to treat as the root entity for the purposes of querying,
 is established either from the method signature or from the generic
 type parameter specified to the GenericRepository interface.

 The micronaut framework implements this at compile time.
 */
public interface GenreRepository extends PageableRepository<Genre, Long>  {

    Genre save(@NotNull @NotBlank String name );


    @Transactional
    default Genre saveWithException(@NonNull @NotBlank String name) {
        save(name);
        throw new DataAccessException("test exception");
    }

    long update(@NonNull @NotNull @Id Long id, @NonNull @NotBlank String name);
}
