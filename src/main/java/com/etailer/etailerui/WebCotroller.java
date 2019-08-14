package com.etailer.etailerui;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/web")
public class WebCotroller {
	
	@GetMapping
	public String test() {
		return "Web server is up";
	}

}
