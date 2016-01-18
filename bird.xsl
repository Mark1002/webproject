<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="bird">
  	<svg version="1.1" xmlns="http://www.w3.org/2000/svg">
  		<defs>
	        <g id="bird">
	        	<title>Bird</title>
	    		<desc>An image of a cute little green bird with an orange beak.</desc>
	        	<g id="body" fill="{body}">
	            	<path d="M48.42,78.11c0-17.45,14.14-31.58,31.59-31.58s31.59,14.14,31.59,31.58c0,17.44-14.14,31.59-31.59,31.59
	            	S48.42,95.56,48.42,78.11"/>
	            	<path d="M109.19,69.88c0,0-8.5-27.33-42.51-18.53c-34.02,8.81-20.65,91.11,45.25,84.73
	            	c40.39-3.65,48.59-24.6,48.59-24.6S124.68,106.02,109.19,69.88"/>
	            	<path id="wing" fill="{wing}" d="M105.78,75.09c4.56,0,8.84,1.13,12.62,3.11c0,0,0.01-0.01,0.01-0.01l36.23,12.38c0,0-13.78,30.81-41.96,38.09
	            	c-1.51,0.39-2.82,0.59-3.99,0.62c-0.96,0.1-1.92,0.16-2.9,0.16c-15.01,0-27.17-12.17-27.17-27.17
	            	C78.61,87.26,90.78,75.09,105.78,75.09"/>
	        	</g>
		        <g id="head">
		            <path id="beak" fill="{beak}" d="M50.43,68.52c0,0-8.81,2.58-10.93,4.86l9.12,9.87C48.61,83.24,48.76,74.28,50.43,68.52"/>
		            <path class="eye-ball" d="M60.53,71.68c0-6.33,5.13-11.46,11.46-11.46c6.33,0,11.46,5.13,11.46,11.46c0,6.33-5.13,11.46-11.46,11.46
		                C65.66,83.14,60.53,78.01,60.53,71.68"/>
		            <path id="pupil" fill="#1F2600" d="M64.45,71.68c0-4.16,3.38-7.53,7.54-7.53c4.16,0,7.53,3.37,7.53,7.53c0,4.16-3.37,7.53-7.53,7.53
		                C67.82,79.22,64.45,75.84,64.45,71.68"/>
		            <path class="eye-ball" fill="#F6FDC4" d="M72.39,74.39c0-2.73,2.22-4.95,4.95-4.95c2.73,0,4.95,2.21,4.95,4.95c0,2.74-2.22,4.95-4.95,4.95
		                C74.6,79.34,72.39,77.13,72.39,74.39"/>
		        </g>
	    	</g>
    	</defs>
    	<g id="birdGroup">
	    	<use x="100" y="200" xlink:href="#bird">
	    		<animateMotion class="path2" path="{path2}"
	          dur="1s" repeatCount="indefinite" />
	    	</use>
	    	<use x="600" y="100" xlink:href="#bird">
	    		<animateMotion class="path3" path="{path3}"
	          dur="5s" repeatCount="indefinite" />
	    	</use>
	    	<use x="250" y="50" xlink:href="#bird">
	    		<animateMotion class="path4" path="{path4}"
	          dur="5s" repeatCount="indefinite" />
	    	</use>
	    	<use x="400" y="50" xlink:href="#bird">
	    		<animateMotion class="path5" path="{path5}"
	          dur="5s" repeatCount="indefinite" />
	    	</use>
	    	<use x="400" y="50" xlink:href="#bird">
	    		<animateMotion class="path1" path="{path1}"
	          dur="5s" repeatCount="indefinite" />
	    	</use>
    	</g>
    	<g id="pathGroup">
    		<animateMotion class="path1" path="{path1}"
	          dur="5s" repeatCount="indefinite" />
	          <animateMotion class="path2" path="{path2}"
	          dur="1s" repeatCount="indefinite" />
	          <animateMotion class="path3" path="{path3}"
	          dur="5s" repeatCount="indefinite" />
	          <animateMotion class="path4" path="{path4}"
	          dur="5s" repeatCount="indefinite" />
	          <animateMotion class="path5" path="{path5}"
	          dur="5s" repeatCount="indefinite" />
    	</g>
    </svg>
  </xsl:template>
</xsl:stylesheet>