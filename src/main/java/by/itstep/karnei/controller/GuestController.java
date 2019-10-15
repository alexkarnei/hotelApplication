package by.itstep.karnei.controller;

import by.itstep.karnei.domain.Guest;
import by.itstep.karnei.service.GuestService;
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
import java.time.LocalDate;
import java.util.Map;

@Controller
@RequestMapping("guests")
public class GuestController {

    @Autowired
    GuestService guestService;

    @GetMapping
    public String guestList(Model model, @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable) {
        Page<Guest> page = guestService.getAll(pageable);
        model.addAttribute("page", page);
        model.addAttribute("url", "/guests");
//        model.addAttribute("owners", ownerService.ownerList());
        return "guests";
    }

    @PostMapping
    public String guestSave(
            @Valid Guest guest,
            Model model,
            BindingResult bindingResult,
            @RequestParam("passport") String passport
    ) {
        Iterable<Guest> guests = guestService.guestList();
        if (!passport.isEmpty()) {
            guest.setPassport(passport);
        }
        if (bindingResult.hasErrors() || passport.isEmpty()) {
            if (passport.isEmpty()) {
                model.addAttribute("passportError", "Please fill the correct passport data");
            } else {
                model.addAttribute("passportError", null);
            }
            model.addAttribute("passport", guest.getPassport());
            model.addAttribute("guests", guests);
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("guest", guest);
            return "guests";
        } else {
            guestService.saveGuest(guest);
            return "redirect:guests";
        }
    }
}

