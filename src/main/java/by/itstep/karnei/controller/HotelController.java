package by.itstep.karnei.controller;


import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.service.HotelService;
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
public class HotelController {

    @Autowired
    HotelService hotelService;

    @GetMapping("hotel")
    public String hotelList(Model model, @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<Hotel> page = hotelService.getAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotel");
        return "hotel";
    }


    @GetMapping("hotelForm")
    public String addHotel() {
        return "hotelForm";
    }

    @GetMapping("hotelForm/{id}")
    public String updateHotel(Model model,
                              @PathVariable Long id,
                              @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Hotel editHotel = hotelService.getById(id);
        Page<Hotel> page = hotelService.getAll(pageable);
        model.addAttribute("page", page);
        if (editHotel != null) {
            model.addAttribute("hotel", editHotel);
        }
        return "hotelForm";
    }
    @PostMapping("hotelForm")
    public String addHotel(@Valid Hotel hotel, BindingResult bindingResult, Model model,
                           @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {

        return getHotel(hotel, bindingResult, model, pageable);
    }

    @PostMapping("hotelForm/{id}")
    public String updateHotel(@Valid Hotel hotel, BindingResult bindingResult, Model model,
                              @PathVariable Long id,
                              @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {

        return getHotel(hotel, bindingResult, model, pageable);
    }

    private String getHotel(@Valid Hotel hotel, BindingResult bindingResult, Model model,
                            @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<Hotel> page = hotelService.getAll(pageable);
        model.addAttribute("url", "/hotel");
        model.addAttribute("page", page);
        if (bindingResult.hasErrors()) {
            model.addAttribute("page", page);
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("oneOwner", hotel);
            return "hotelForm";
        } else {
            if (hotelService.saveHotel(hotel)) {
                return "redirect:/hotel";
            } else {
                model.addAttribute("page", page);
                model.addAttribute("savingReport", "Such hotel is already exist!");
                model.addAttribute("oneHotel", hotel);
                return "hotelForm";
            }
        }
    }

    @PostMapping("hotel")
    public String hotelSave(
            @Valid Hotel hotel,
            Model model,
            BindingResult bindingResult,
            @RequestParam("address") String address
    ) {
        Iterable<Hotel> hotels = hotelService.hotelList();
        if (!address.isEmpty()) {
            hotel.setAddress(address);
        }
        if (bindingResult.hasErrors() || address.isEmpty()) {
            if (address.isEmpty()) {
                model.addAttribute("addressError", "Please fill the correct address");
            } else {
                model.addAttribute("addressError", null);
            }
            model.addAttribute("address", hotel.getAddress());
            model.addAttribute("hotel", hotels);
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("hotel", hotel);
            return "hotel";
        } else {
            hotelService.saveHotel(hotel);
            return "redirect:hotel";
        }
    }

}
