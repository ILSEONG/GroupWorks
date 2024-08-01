package kr.co.groupworks.materialflow.control;

import kr.co.groupworks.materialflow.service.MaterialOpenApiService;
import kr.co.groupworks.materialflow.service.MaterialService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping(value = "/material-flow")
@RequiredArgsConstructor
public class MaterialFlowManagerRestController {
    /* MaterialFlowManagement RestAPI */
    MaterialService materialService;
    MaterialOpenApiService materialOpenApiService;


}
