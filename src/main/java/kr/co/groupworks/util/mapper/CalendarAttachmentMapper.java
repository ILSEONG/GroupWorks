package kr.co.groupworks.util.mapper;

import kr.co.groupworks.dto.kah.OtherFormDTO;
import kr.co.groupworks.dto.kah.SickFormDTO;
import kr.co.groupworks.entity.kah.CalendarAttachment;
import kr.co.groupworks.entity.kah.Vacation;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface CalendarAttachmentMapper {
    @Mapping(target = "filePath", source = "dto.sickFilePath")
    @Mapping(target = "fileName", source = "dto.sickFileName")
    @Mapping(target = "calendar", source = "vacation")
    CalendarAttachment toEntity(SickFormDTO dto, Vacation vacation);

    @Mapping(target = "filePath", source = "dto.otherFilePath")
    @Mapping(target = "fileName", source = "dto.otherFileName")
    @Mapping(target = "calendar", source = "vacation")
    CalendarAttachment toEntity(OtherFormDTO dto, Vacation vacation);
}
