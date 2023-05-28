package backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = {"/"})
public class CalculatorController {

    @GetMapping
    public ModelAndView showIndex() {
        return new ModelAndView("index");
    }

    @GetMapping("/calculator")
    public ModelAndView calculator(
            @RequestParam(name = "action", required = false) String action,
            @RequestParam(name = "num1", required = false) float num1,
            @RequestParam(value = "num2", required = false) float num2) {
        ModelAndView modelAndView = new ModelAndView("index");
        System.out.println(action);
        System.out.println(num1);
        System.out.println(num2);
        String result = "";
        switch (action) {
            case "add" -> result = String.valueOf(num1 + num2);
            case "sub" -> result = String.valueOf(num1 - num2);
            case "mul" -> result = String.valueOf(num1 * num2);
            case "div" -> {
                if (num2 == 0) {
                    result = "Div by 0";
                } else {
                    result = String.valueOf(num1 / num2);
                }
            }
        }
        modelAndView.addObject("result", result);
        return modelAndView;
    }
}
