// Main JavaScript File

// Recent posts data
const recentPosts = [
    {
        title: "React 19: A Game-Changer for Modern Web Development",
        category: "Web Development",
        excerpt: "Explore the latest features of React 19 and how they revolutionize web development.",
        link: "posts/web-development/react-19-new-features.html",
        image: "https://via.placeholder.com/400x200/3498db/ffffff?text=React+19"
    },
    {
        title: "Building Your First Neural Network with TensorFlow",
        category: "AI & Machine Learning",
        excerpt: "Step-by-step guide to creating your first neural network for image classification.",
        link: "posts/ai-machine-learning/tensorflow-tutorial.html",
        image: "https://via.placeholder.com/400x200/e74c3c/ffffff?text=TensorFlow"
    },
    {
        title: "Ethical Hacking: The Guardians of Cybersecurity",
        category: "Cybersecurity",
        excerpt: "Understanding the role of ethical hackers in protecting digital infrastructure.",
        link: "posts/cybersecurity/ethical-hacking.html",
        image: "https://via.placeholder.com/400x200/2c3e50/ffffff?text=Ethical+Hacking"
    }
];

// Load recent posts
document.addEventListener('DOMContentLoaded', function() {
    const postsGrid = document.querySelector('.posts-grid');
    
    if (postsGrid) {
        recentPosts.forEach(post => {
            const postCard = document.createElement('div');
            postCard.className = 'post-card';
            
            postCard.innerHTML = `
                <img src="${post.image}" alt="${post.title}">
                <div class="post-content">
                    <span class="post-category">${post.category}</span>
                    <h3><a href="${post.link}">${post.title}</a></h3>
                    <p>${post.excerpt}</p>
                    <div class="post-meta">
                        <span>3 min read</span>
                        <a href="${post.link}" class="read-more">Read More</a>
                    </div>
                </div>
            `;
            
            postsGrid.appendChild(postCard);
        });
    }
    
    // Ad management
    initializeAds();
});

// Ad initialization
function initializeAds() {
    // AdSense auto ads
    (adsbygoogle = window.adsbygoogle || []).push({});
    
    // Create ad containers
    const adContainers = document.querySelectorAll('.ad-container');
    adContainers.forEach(container => {
        const adScript = document.createElement('script');
        adScript.async = true;
        adScript.src = "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js";
        container.appendChild(adScript);
    });
}

// Mobile menu toggle
function toggleMobileMenu() {
    const navMenu = document.querySelector('.nav-menu');
    navMenu.classList.toggle('show');
}