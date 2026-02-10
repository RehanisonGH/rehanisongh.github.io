posts=(
    "1-react-19-new-features.html:React 19: New Features and Breaking Changes"
    "2-vue-3-composition-api.html:Vue 3 Composition API: Complete Tutorial"
    "3-nextjs-14-tutorial.html:Next.js 14: Full Stack Development Guide"
    "4-tailwind-css-guide.html:Tailwind CSS: From Basics to Advanced"
    "5-typescript-beginners.html:TypeScript for JavaScript Developers"
    "6-graphql-vs-rest.html:GraphQL vs REST: When to Use Each"
    "7-webpack-vite-comparison.html:Webpack vs Vite: Modern Build Tools"
    "8-pwa-development.html:Progressive Web Apps (PWA) Guide"
    "9-web-components.html:Web Components: Native Component Model"
    "10-web-performance.html:Web Performance Optimization Techniques"
    "11-seo-for-developers.html:SEO Best Practices for Developers"
    "12-web-security.html:Web Security: Essential Protection"
    "13-responsive-design.html:Responsive Design Masterclass"
    "14-css-grid-flexbox.html:CSS Grid & Flexbox Deep Dive"
    "15-javascript-es2024.html:JavaScript ES2024 Features"
    "16-nodejs-express.html:Node.js & Express Backend Guide"
    "17-mongodb-database.html:MongoDB Database Design"
    "18-docker-web-dev.html:Docker for Web Developers"
    "19-ci-cd-pipeline.html:CI/CD Pipeline Setup"
    "20-web3-development.html:Web3 Development Basics")

    echo "Creating: $filename"
    
    cat > "blog/posts/$filename" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title | TechInsight</title>
    <meta name="description" content="$title - Comprehensive guide and tutorial for web developers">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Copy header from your index.html -->
    <header class="main-header">
        <div class="container">
            <a href="../../index.html" class="logo">TechInsight</a>
            <nav>
                <a href="../../index.html">Home</a>
                <a href="../index.html">Blog</a>
                <a href="../category-web-development.html">Web Development</a>
            </nav>
        </div>
    </header>

    <main class="blog-post">
        <div class="container">
            <nav class="breadcrumb">
                <a href="../../index.html">Home</a> > 
                <a href="../index.html">Blog</a> > 
                <a href="../category-web-development.html">Web Development</a> > 
                <span>${title%%:*}</span>
            </nav>
            
            <article>
                <h1>$title</h1>
                
                <div class="post-meta">
                    <span><i class="fas fa-user"></i> Author Name</span>
                    <span><i class="far fa-calendar"></i> $(date '+%B %d, %Y')</span>
                    <span><i class="far fa-clock"></i> 10 min read</span>
                </div>
                
                <img src="../../images/blog-covers/${filename%.*}.jpg" alt="$title" class="featured-image">
                
                <div class="content">
                    <h2>Introduction</h2>
                    <p>Welcome to our comprehensive guide on $title. This article will take you through everything you need to know about this important web development topic, from basic concepts to advanced implementations.</p>
                    
                    <h2>Core Concepts</h2>
                    <p>Understanding the fundamental concepts is crucial for mastering $title. We'll break down the key principles that every developer should know.</p>
                    
                    <h2>Practical Implementation</h2>
                    <p>Let's look at how to implement $title in real-world projects. We'll provide code examples and best practices.</p>
                    
                    <div class="code-example">
                        <pre><code>// Example code for $title
function example() {
    console.log("Implementing $title");
    return "Success";
}</code></pre>
                    </div>
                    
                    <h2>Best Practices</h2>
                    <p>Follow these best practices to ensure your implementation of $title is efficient, maintainable, and scalable.</p>
                    
                    <h2>Conclusion</h2>
                    <p>$title is an essential skill for modern web developers. By mastering these concepts and techniques, you'll be able to build better, faster, and more reliable web applications.</p>
                    
                    <div class="tags">
                        <strong>Tags:</strong>
                        <span class="tag">Web Development</span>
                        <span class="tag">${title%%:*}</span>
                        <span class="tag">Tutorial</span>
                    </div>
                </div>
            </article>
            
            <div class="navigation">
                <a href="../../index.html" class="btn"><i class="fas fa-home"></i> Back to Home</a>
                <a href="../index.html" class="btn"><i class="fas fa-book"></i> All Articles</a>
            </div>
        </div>
    </main>
    
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 TechInsight Blog</p>
            <p><a href="../../index.html">Home</a> | <a href="../index.html">Blog</a> | <a href="../../about.html">About</a></p>
        </div>
    </footer>
</body>
</html>
EOF
