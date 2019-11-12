package by.itstep.karnei.controller;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelPictures;
import by.itstep.karnei.service.HotelPicturesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping
public class HotelPicturesController {

    @Autowired
    HotelPicturesService hotelPicturesService;

    @GetMapping("hotelPictures")
    public String hotelPicturesList(Model model,
                                    @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<HotelPictures> page = hotelPicturesService.getAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotelPictures");
        return "hotelPictures";
    }

    @GetMapping("hotelPictures/{hotel}")
    public String hotelPicturesList(Model model,
                                    @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable,
                                    @PathVariable Hotel hotel) {
        Page<HotelPictures> page = hotelPicturesService.getAllByHotel(pageable, hotel);
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotelPictures");

        return "hotelPictures";
    }

    @PostMapping("hotelPictures/{hotel}")
    public String hotelPictureSave(
            @Valid HotelPictures hotelPictures,
            Model model,
            BindingResult bindingResult,
            @PathVariable Hotel hotel
    ) {
        Iterable<HotelPictures> hotelsPicture =
                hotelPicturesService.hotelPicturesList();
        if (bindingResult.hasErrors() /*|| url.isEmpty()*/) {
            model.addAttribute("url", hotelPictures.getUrl());
            model.addAttribute("hotelPictures", hotelsPicture);
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("hotelPictures", hotelPictures);
            return "redirect:{hotel}";
        } else {
            hotelPicturesService.saveHotelPictures(hotelPictures);
            return "redirect:{hotel}";
        }
    }
}

