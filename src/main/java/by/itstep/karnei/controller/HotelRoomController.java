package by.itstep.karnei.controller;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelRoom;
import by.itstep.karnei.service.HotelRoomService;
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
public class HotelRoomController {

    @Autowired
    HotelRoomService hotelRoomService;

    @GetMapping("hotelRoom")
    public String hotelRoomList(Model model,
                                @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<HotelRoom> page = hotelRoomService.getAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotelRoom");
        return "hotelRoom";
    }

    @GetMapping("hotelRoom/{hotel}")
    public String hotelRoomList(Model model,
                                @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable,
                                @PathVariable Hotel hotel) {
        Page<HotelRoom> page = hotelRoomService.getAllByHotel(pageable,hotel);
        System.out.println(page.toString());
        model.addAttribute("page", page);
        model.addAttribute("url", "/hotelRoom");
        return "hotelRoom";
    }

    @PostMapping("hotelRoom")
    public String hotelRoomSave(
            @Valid HotelRoom hotelRoom,
            Model model,
            BindingResult bindingResult
    ) {
        Iterable<HotelRoom> hotelRooms = hotelRoomService.hotelRoomList();
        if (bindingResult.hasErrors()) {
                model.addAttribute("hotelError", null);
            model.addAttribute("hotelRoom", hotelRoom.getHotel());
            model.addAttribute("hotelRoom", hotelRooms);
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("hotelRoom", hotelRoom);
            return "hotelRoom";
        } else {
            hotelRoomService.saveHotelRoom(hotelRoom);
            return "redirect:hotelRoom";
        }
    }

}
