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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("hotel")
public class HotelController {

    @Autowired
    HotelService hotelService;

    @GetMapping
    public String guestList(Model model, @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<Hotel> page = hotelService.getAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotel");
        return "hotel";
    }

    @PostMapping
    public String guestSave(
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
            model.addAttribute("guest", hotel);
            return "guests";
        } else {
            hotelService.saveHotel(hotel);
            return "redirect:hotel";
        }
    }

}
