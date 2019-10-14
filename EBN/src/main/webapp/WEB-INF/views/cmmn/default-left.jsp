<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<div>
	<div>
		<div class="inline-block">
			<img class="user-pic" src="img/user.png" alt="User picture">
		</div>
		<a id="hide-sidebar" style="float: right;">
			<i class="fas fa-times text-sh"></i>
		</a>
		<div class="inline-block">
			<span class="user-name">자바개발자</span><br>
			<span class="user-role">팀장</span><br>
			<span class="user-status">
				<strong>LV : 2</strong>
			</span>
		</div>
	</div>
        <ul>
          <li class="sidebar-dropdown active">
            <a class="font-size-3" href="#">
              <i class="text-color-sh fas fa-tachometer-alt"></i>
              <span>Menu 1</span>
              <i class="fas fa-arrow-up text-color-sh font-size-2"></i>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Dashboard 1</a>
                </li>
                <li>
                  <a href="#">Dashboard 2</a>
                </li>
                <li>
                  <a href="#">Dashboard 3</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown active">
            <a class="font-size-3" href="#">
              <i class="text-color-sh fas fa-shopping-cart"></i>
              <span>Menu 2</span>
              <i class="fas fa-arrow-up text-color-sh font-size-2"></i>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Products

                  </a>
                </li>
                <li>
                  <a href="#">Orders</a>
                </li>
                <li>
                  <a href="#">Credit cart</a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            <a class="font-size-3" href="#">
              <i class="text-color-sh fas fa-book"></i>
              <span>Menu 3</span>
            </a>
          </li>
          <li>
            <a class="font-size-3" href="#">
              <i class="text-color-sh fas fa-folder"></i>
              <span>Menu 4</span>
            </a>
          </li>
       </ul>
      </div>
 