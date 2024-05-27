let lastScrollTop = 0;
const progressBar = document.getElementById("progress-bar");
const progressContainer = document.getElementById("progress-container");
const mainNav = document.getElementById("mainNav");
const navbarHeight = mainNav.offsetHeight;

window.onscroll = function() {
    updateProgressBar();
    handleScrollPosition();
};

function updateProgressBar() {
    var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
    var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
    var scrolled = (winScroll / height) * 100;
    progressBar.style.width = scrolled + "%";
}

function handleScrollPosition() {
    let st = window.pageYOffset || document.documentElement.scrollTop;
    if (st > lastScrollTop) {
        // Scrolling down
        progressContainer.style.top = '0';
    } else {
        // Scrolling up
        progressContainer.style.top = navbarHeight + 'px';
    }
    lastScrollTop = st <= 0 ? 0 : st; // For Mobile or negative scrolling
}

// Navbar scroll behavior
window.addEventListener('DOMContentLoaded', () => {
    let scrollPos = 0;
    const headerHeight = mainNav.clientHeight;
    window.addEventListener('scroll', function() {
        const currentTop = document.body.getBoundingClientRect().top * -1;
        if (currentTop < scrollPos) {
            // Scrolling Up
            if (currentTop > 0 && mainNav.classList.contains('is-fixed')) {
                mainNav.classList.add('is-visible');
            } else {
                mainNav.classList.remove('is-visible', 'is-fixed');
            }
        } else {
            // Scrolling Down
            mainNav.classList.remove('is-visible');
            if (currentTop > headerHeight && !mainNav.classList.contains('is-fixed')) {
                mainNav.classList.add('is-fixed');
            }
        }
        scrollPos = currentTop;
    });
});
