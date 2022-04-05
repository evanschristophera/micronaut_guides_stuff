package example.micronaut;

import example.micronaut.domain.SystemDataLabels;
import io.micronaut.data.model.Pageable;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.annotation.*;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.scheduling.annotation.ExecuteOn;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@ExecuteOn(TaskExecutors.IO)

@Controller("/datalabels")
public class SystemDataLabelsController {

    protected final SystemDataLabelsRepository repository;

    public SystemDataLabelsController(SystemDataLabelsRepository repository) {
        this.repository = repository;
    }

    @Get("/{id}")
    public Optional<SystemDataLabels> show(UUID id) {
        return repository
                .findById(id);
    }
//
//    @Put
//    public HttpResponse update(@Body @Valid SystemDataLabelUpdateCommand command) {
//        repository.update(command.getId(), command.getName());
//        return HttpResponse
//                .noContent()
//                .header(HttpHeaders.LOCATION, location(command.getId()));
//    }

    @Get("/list")
    public List<SystemDataLabels> list(@Valid Pageable pageable) {
        return repository.findAll(pageable).getContent();
    }

//    @Post
//    public HttpResponse<SystemDataLabels> save(@Body("name") @NotBlank String name) {
//        SystemDataLabels dataLabel = repository.save(name);
//
//        return HttpResponse
//                .created(dataLabel)
//                .headers(headers -> headers.location(location(dataLabel.getDatalabelId())));
//    }

//    @Post("/ex")
//    public HttpResponse<SystemDataLabels> saveExceptions(@Body @NotBlank String systemName) {
//        try {
//            SystemDataLabels dataLabel = repository.saveWithException(systemName);
//            return HttpResponse
//                    .created(dataLabel)
//                    .headers(headers -> headers.location(location(dataLabel.getDatalabelId())));
//        } catch(DataAccessException e) {
//            return HttpResponse.noContent();
//        }
//    }

    @Delete("/{id}")
    @Status(HttpStatus.NO_CONTENT)
    public void delete(UUID id) {
        repository.deleteById(id);
    }

//    protected CharSequence location(UUID id) {
//        return URI.create("/datalabels/" + id);
//    }
//
//    protected URI location(SystemDataLabels dataLabel) {
//        return location(dataLabel.getDatalabelId());
//    }
}