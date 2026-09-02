<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaMart · high‑contrast rework</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        :root {
            --bg: #faf6f0;
            --surface: #ffffff;
            --text-main: #1a1a1a;
            --text-muted: #3d3d3d;
            --border: #d0cbc4;
            --accent: #c44536;
            --accent-hover: #a83224;
            --accent-glow: rgba(196, 69, 54, 0.25);
            --success: #2b7a4b;
            --shadow: 0 12px 30px -10px rgba(0,0,0,0.08);
            --radius: 20px;
            --radius-sm: 12px;
            --transition: 0.2s ease;
        }
        body.dark {
            --bg: #1e1b1a;
            --surface: #2b2725;
            --text-main: #f2ede8;
            --text-muted: #c9c1b9;
            --border: #4a4440;
            --shadow: 0 12px 30px -6px rgba(0,0,0,0.6);
        }
        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg);
            color: var(--text-main);
            transition: background 0.2s, color 0.2s;
            line-height: 1.5;
        }
        .container { max-width: 1240px; margin: 0 auto; padding: 0 28px; }

        /* header — crisp & clean */
        .header {
            background: var(--surface);
            border-bottom: 2px solid var(--border);
            padding: 14px 0;
            position: sticky;
            top: 0;
            z-index: 50;
            backdrop-filter: blur(6px);
            background: rgba(255, 255, 255, 0.88);
        }
        body.dark .header { background: rgba(30, 27, 26, 0.92); }
        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            flex-wrap: wrap;
        }
        .logo {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -0.5px;
            color: var(--text-main);
        }
        .logo i { color: var(--accent); margin-right: 6px; }

        .nav { display: flex; gap: 28px; font-weight: 600; }
        .nav a { color: var(--text-muted); transition: var(--transition); text-decoration: none; }
        .nav a:hover { color: var(--accent); }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--bg);
            border: 1.5px solid var(--border);
            border-radius: 60px;
            padding: 6px 16px 6px 20px;
            min-width: 220px;
            transition: 0.15s;
        }
        .search-wrap:focus-within { border-color: var(--accent); box-shadow: 0 0 0 3px var(--accent-glow); }
        .search-wrap input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.95rem;
            padding: 8px 0;
            width: 100%;
            color: var(--text-main);
        }
        .search-wrap i { color: var(--text-muted); }

        .actions { display: flex; align-items: center; gap: 12px; }
        .icon-btn {
            background: var(--bg);
            border: 1.5px solid var(--border);
            border-radius: 60px;
            width: 44px;
            height: 44px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            transition: var(--transition);
            color: var(--text-main);
            cursor: pointer;
        }
        .icon-btn:hover { background: var(--accent); color: #fff; border-color: var(--accent); }
        .cart-badge {
            position: relative;
        }
        .cart-badge .badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: #fff;
            font-size: 12px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* hero – strong contrast */
        .hero {
            background: var(--surface);
            border-radius: 32px;
            margin: 28px 0 36px;
            padding: 56px 40px;
            border: 2px solid var(--border);
            box-shadow: var(--shadow);
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 40px;
        }
        .hero-text { flex: 1 1 300px; }
        .hero-text .badge {
            background: var(--accent);
            color: #fff;
            display: inline-block;
            padding: 4px 16px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 0.85rem;
            letter-spacing: 0.3px;
            margin-bottom: 16px;
        }
        .hero-text h1 {
            font-size: 44px;
            font-weight: 800;
            line-height: 1.1;
            color: var(--text-main);
        }
        .hero-text h1 span { color: var(--accent); }
        .hero-text p {
            font-size: 1.1rem;
            color: var(--text-muted);
            max-width: 420px;
            margin: 18px 0 28px;
        }
        .btn-group { display: flex; gap: 14px; flex-wrap: wrap; }
        .btn {
            border: none;
            padding: 14px 34px;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1rem;
            transition: var(--transition);
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            box-shadow: 0 4px 12px var(--accent-glow);
        }
        .btn-primary:hover { background: var(--accent-hover); transform: scale(1.02); }
        .btn-outline {
            background: transparent;
            border: 2px solid var(--border);
            color: var(--text-main);
        }
        .btn-outline:hover { border-color: var(--accent); color: var(--accent); }
        .hero-img {
            flex: 1 1 280px;
            border-radius: 28px;
            overflow: hidden;
            background: var(--bg);
        }
        .hero-img img { width: 100%; height: 200px; object-fit: cover; display: block; }

        /* sections */
        .section-title {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 8px;
        }
        .section-sub {
            color: var(--text-muted);
            margin-bottom: 32px;
            font-weight: 500;
        }
        .flex-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-bottom: 48px;
        }
        .cat-card {
            background: var(--surface);
            border: 2px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 22px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }
        .cat-card:hover { border-color: var(--accent); transform: translateY(-4px); box-shadow: var(--shadow); }
        .cat-card i { font-size: 36px; color: var(--accent); margin-bottom: 10px; }
        .cat-card h4 { font-weight: 700; }

        /* product grid – high legibility */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 30px;
            margin: 28px 0 48px;
        }
        .product-card {
            background: var(--surface);
            border: 2px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
        }
        .product-card:hover { transform: translateY(-6px); box-shadow: var(--shadow); border-color: var(--accent); }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            background: var(--bg);
        }
        .product-body { padding: 18px 20px 20px; }
        .product-title { font-weight: 700; font-size: 1.1rem; }
        .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin: 8px 0 10px;
        }
        .price-current { font-size: 1.6rem; font-weight: 800; color: var(--accent); }
        .price-old { font-size: 1rem; text-decoration: line-through; color: var(--text-muted); }
        .rating { color: #d4a373; font-weight: 600; }
        .card-actions {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .btn-add {
            flex: 1;
            background: var(--bg);
            border: 2px solid var(--border);
            border-radius: 60px;
            padding: 10px 0;
            font-weight: 700;
            transition: var(--transition);
            cursor: pointer;
            color: var(--text-main);
        }
        .btn-add:hover { background: var(--accent); color: #fff; border-color: var(--accent); }
        .btn-icon {
            background: var(--bg);
            border: 2px solid var(--border);
            border-radius: 60px;
            width: 44px;
            height: 44px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition);
            color: var(--text-main);
        }
        .btn-icon:hover { background: var(--accent); color: #fff; border-color: var(--accent); }

        /* flash sale – bold */
        .flash {
            background: var(--surface);
            border: 2px solid var(--border);
            border-radius: 32px;
            padding: 32px 36px;
            margin: 40px 0;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 32px;
        }
        .flash-img {
            flex: 1 1 200px;
            border-radius: 24px;
            overflow: hidden;
        }
        .flash-img img { width: 100%; height: 180px; object-fit: cover; }
        .flash-content { flex: 2 1 300px; }
        .flash-content h2 { font-size: 34px; font-weight: 800; }
        .flash-content p { color: var(--text-muted); margin: 6px 0 16px; }
        .timer {
            display: flex;
            gap: 14px;
            margin: 16px 0 20px;
        }
        .time-block {
            background: var(--bg);
            border-radius: 16px;
            padding: 8px 16px;
            text-align: center;
            border: 1px solid var(--border);
            min-width: 70px;
        }
        .time-block .num { font-size: 30px; font-weight: 800; color: var(--accent); }
        .time-block .label { font-size: 0.7rem; font-weight: 600; color: var(--text-muted); }

        /* testimonials */
        .testi-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 28px;
        }
        .testi-card {
            min-width: 280px;
            background: var(--surface);
            border: 2px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 24px;
        }
        .testi-card .stars { color: #d4a373; }

        /* newsletter – high contrast */
        .newsletter {
            background: var(--surface);
            border: 2px solid var(--border);
            border-radius: 40px;
            padding: 48px 32px;
            text-align: center;
            margin: 40px 0 20px;
        }
        .newsletter h3 { font-size: 30px; font-weight: 800; }
        .newsletter p { color: var(--text-muted); margin: 6px 0 24px; }
        .news-form {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 12px;
        }
        .news-form input {
            padding: 14px 24px;
            border-radius: 60px;
            border: 2px solid var(--border);
            background: var(--bg);
            width: 280px;
            font-size: 1rem;
            color: var(--text-main);
        }
        .news-form input:focus { outline: none; border-color: var(--accent); }

        footer {
            margin-top: 48px;
            padding: 32px 0;
            border-top: 2px solid var(--border);
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 24px;
        }

        /* responsive */
        @media (max-width: 760px) {
            .nav { display: none; }
            .search-wrap { min-width: 140px; }
            .hero-text h1 { font-size: 32px; }
        }
        @media (max-width: 500px) {
            .container { padding: 0 16px; }
            .hero { padding: 28px 18px; }
            .flash { padding: 20px; }
        }

        .toast {
            position: fixed;
            bottom: 24px;
            left: 50%;
            transform: translateX(-50%);
            background: var(--text-main);
            color: var(--bg);
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 700;
            z-index: 999;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        .theme-toggle { cursor: pointer; }
    </style>
</head>
<body>
    <header class="header">
        <div class="container header-flex">
            <div class="logo"><i class="fas fa-bolt"></i>NovaMart</div>
            <nav class="nav">
                <a href="#">Home</a>
                <a href="#">Shop</a>
                <a href="#">Deals</a>
                <a href="#">Insights</a>
            </nav>
            <div class="search-wrap">
                <i class="fas fa-search"></i>
                <input type="text" id="searchInput" placeholder="Search...">
            </div>
            <div class="actions">
                <span class="icon-btn theme-toggle" id="themeToggle"><i class="fas fa-moon"></i></span>
                <span class="icon-btn"><i class="far fa-heart"></i></span>
                <span class="icon-btn cart-badge" id="cartBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="badge" id="cartCount">0</span>
                </span>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- hero -->
        <section class="hero">
            <div class="hero-text">
                <span class="badge"><i class="fas fa-gem"></i> limited drop</span>
                <h1>Style that <span>stands out</span></h1>
                <p>High‑contrast design meets premium essentials. Fresh drops every week.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-outline" id="dealBtn">Explore deals</button>
                </div>
            </div>
            <div class="hero-img">
                <img src="https://images.unsplash.com/photo-1552346154-21d32810aba3?auto=format&fit=crop&w=800&q=80" alt="hero">
            </div>
        </section>

        <!-- categories -->
        <div class="section-title">Categories</div>
        <div class="section-sub">Shop by interest</div>
        <div class="flex-grid" id="categoryGrid"></div>

        <!-- products -->
        <div class="section-title" id="productSectionTitle">✨ Trending</div>
        <div class="section-sub">Most loved this week</div>
        <div class="product-grid" id="productGrid"></div>

        <!-- flash sale -->
        <div class="flash" id="flashDeal">
            <div class="flash-img">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="flash">
            </div>
            <div class="flash-content">
                <h2>⚡ Flash sale</h2>
                <p>MacBook Pro M3 – 20% off + bundle</p>
                <div class="timer" id="timerGroup">
                    <div class="time-block"><span class="num" id="days">00</span><div class="label">Days</div></div>
                    <div class="time-block"><span class="num" id="hours">00</span><div class="label">Hrs</div></div>
                    <div class="time-block"><span class="num" id="minutes">00</span><div class="label">Min</div></div>
                    <div class="time-block"><span class="num" id="seconds">00</span><div class="label">Sec</div></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 12px; flex-wrap: wrap;">
                    <span style="font-size: 32px; font-weight: 800; color: var(--accent);">$1,299</span>
                    <span style="text-decoration: line-through; color: var(--text-muted);">$1,699</span>
                    <button class="btn btn-primary" id="flashAddBtn"><i class="fas fa-cart-plus"></i> Grab</button>
                </div>
            </div>
        </div>

        <!-- testimonials -->
        <div class="section-title">❤️ Customer love</div>
        <div class="section-sub">Real stories</div>
        <div class="testi-scroll" id="testiList"></div>

        <!-- newsletter -->
        <div class="newsletter">
            <h3>Join the inner circle</h3>
            <p>Early access, exclusive rewards &amp; drops</p>
            <form class="news-form" id="newsForm">
                <input type="email" id="newsEmail" placeholder="you@example.com" required>
                <button type="submit" class="btn btn-primary">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-weight: 600;"></div>
        </div>
    </main>

    <footer class="container">
        <div><strong style="font-size: 20px;">NovaMart</strong><br><span style="color: var(--text-muted);">next‑gen style</span></div>
        <div><strong>Explore</strong><br>About · Careers · Sustainability</div>
        <div><strong>Support</strong><br>Help · Returns · Contact</div>
        <div style="width:100%; border-top: 2px solid var(--border); padding-top: 20px; text-align: center; color: var(--text-muted);">© 2026 NovaMart – high contrast edition</div>
    </footer>

    <script>
        (function(){
            // --- DATA ---
            const CATS = [
                { name: 'Audio & Hi‑Fi', icon: 'fa-headphones' },
                { name: 'Wearables', icon: 'fa-apple-alt' },
                { name: 'Gaming', icon: 'fa-gamepad' },
                { name: 'Streetwear', icon: 'fa-vest' },
                { name: 'Luxury Acc.', icon: 'fa-gem' },
                { name: 'Smart Home', icon: 'fa-microchip' }
            ];
            const PRODUCTS = [
                { id:1, title:'Sony WH-1000XM6', price:399, old:499, rating:5, reviews:324, img:'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', badge:'Best Seller' },
                { id:2, title:'Apple Watch Ultra 2', price:749, old:799, rating:5, reviews:512, img:'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80', badge:'New' },
                { id:3, title:'Razer Blade 16', price:2799, old:3199, rating:4.8, reviews:210, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
                { id:4, title:'Off-White Hoodie', price:420, old:650, rating:4.7, reviews:89, img:'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80', badge:'Limited' },
                { id:5, title:'Dyson V15', price:599, old:749, rating:4.9, reviews:178, img:'https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80' },
                { id:6, title:'Bose QC Ultra', price:379, old:429, rating:4.9, reviews:267, img:'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80' }
            ];
            const TESTIMONIALS = [
                { name:'Sophia Chen', text:'Absolutely love the bold design and fast shipping.', rating:5, avatar:'https://randomuser.me/api/portraits/women/68.jpg' },
                { name:'James Walker', text:'Flash sale was insane! Grabbed the MacBook.', rating:5, avatar:'https://randomuser.me/api/portraits/men/32.jpg' },
                { name:'Elena R.', text:'Premium experience, support helped in minutes.', rating:4.9, avatar:'https://randomuser.me/api/portraits/women/44.jpg' }
            ];

            let cartCount = 0;
            const cartSpan = document.getElementById('cartCount');
            const productGrid = document.getElementById('productGrid');
            const categoryGrid = document.getElementById('categoryGrid');
            const searchInput = document.getElementById('searchInput');
            const toast = (msg) => {
                const t = document.createElement('div');
                t.className = 'toast';
                t.textContent = msg;
                document.body.appendChild(t);
                setTimeout(() => t.remove(), 2000);
            };

            // render categories
            categoryGrid.innerHTML = CATS.map(c => `
                <div class="cat-card" data-cat="${c.name}">
                    <i class="fas ${c.icon}"></i>
                    <h4>${c.name}</h4>
                </div>
            `).join('');
            document.querySelectorAll('.cat-card').forEach(el => {
                el.addEventListener('click', function(){
                    const cat = this.dataset.cat;
                    searchInput.value = cat;
                    filterProducts(cat);
                    document.getElementById('productSectionTitle').scrollIntoView({ behavior: 'smooth' });
                });
            });

            // render products
            function renderProducts(arr) {
                productGrid.innerHTML = arr.map(p => `
                    <div class="product-card">
                        ${p.badge ? `<div style="background:var(--accent);color:#fff;padding:2px 14px;border-radius:40px;position:absolute;top:12px;left:12px;font-weight:700;font-size:0.75rem;z-index:2;">${p.badge}</div>` : ''}
                        <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy" style="display:block;">
                        <div class="product-body">
                            <div class="product-title">${p.title}</div>
                            <div class="price-row">
                                <span class="price-current">$${p.price}</span>
                                ${p.old ? `<span class="price-old">$${p.old}</span>` : ''}
                            </div>
                            <div class="rating"><i class="fas fa-star" style="color:#d4a373;"></i> ${p.rating} (${p.reviews})</div>
                            <div class="card-actions">
                                <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add</button>
                                <button class="btn-icon"><i class="far fa-heart"></i></button>
                            </div>
                        </div>
                    </div>
                `).join('');
                document.querySelectorAll('.btn-add[data-id]').forEach(btn => {
                    btn.addEventListener('click', function(e){
                        e.stopPropagation();
                        const id = parseInt(this.dataset.id);
                        const product = PRODUCTS.find(p => p.id === id);
                        if(!product) return;
                        cartCount++;
                        cartSpan.textContent = cartCount;
                        const orig = this.innerHTML;
                        this.innerHTML = '<i class="fas fa-check"></i> Added!';
                        setTimeout(() => this.innerHTML = orig, 1200);
                        toast(`${product.title} added ✨`);
                    });
                });
            }

            function filterProducts(q) {
                const query = q.trim().toLowerCase();
                if(!query) { renderProducts(PRODUCTS); return; }
                const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.title.toLowerCase().includes(query));
                renderProducts(filtered);
            }

            searchInput.addEventListener('input', (e) => filterProducts(e.target.value));
            searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

            // countdown
            function countdown() {
                const target = new Date();
                target.setDate(target.getDate() + 2);
                target.setHours(target.getHours() + 5);
                const update = () => {
                    const diff = target - new Date();
                    if(diff <= 0) {
                        ['days','hours','minutes','seconds'].forEach(id => document.getElementById(id).textContent = '00');
                        return;
                    }
                    document.getElementById('days').textContent = String(Math.floor(diff/(1000*60*60*24))).padStart(2,'0');
                    document.getElementById('hours').textContent = String(Math.floor((diff/(1000*60*60))%24)).padStart(2,'0');
                    document.getElementById('minutes').textContent = String(Math.floor((diff/(1000*60))%60)).padStart(2,'0');
                    document.getElementById('seconds').textContent = String(Math.floor((diff/1000)%60)).padStart(2,'0');
                };
                update();
                setInterval(update, 1000);
            }
            countdown();

            // testimonials
            const testiList = document.getElementById('testiList');
            testiList.innerHTML = TESTIMONIALS.map(t => `
                <div class="testi-card">
                    <div style="display:flex;gap:12px;align-items:center;margin-bottom:12px;">
                        <img src="${t.avatar}" style="width:44px;height:44px;border-radius:60px;object-fit:cover;border:2px solid var(--border);">
                        <div><strong>${t.name}</strong><div class="stars">${'★'.repeat(Math.floor(t.rating))}</div></div>
                    </div>
                    <p style="color:var(--text-muted);">“${t.text}”</p>
                </div>
            `).join('');

            // theme toggle
            document.getElementById('themeToggle').addEventListener('click', function(){
                document.body.classList.toggle('dark');
                const icon = this.querySelector('i');
                if(document.body.classList.contains('dark')) icon.className = 'fas fa-sun';
                else icon.className = 'fas fa-moon';
            });

            // newsletter
            document.getElementById('newsForm').addEventListener('submit', function(e){
                e.preventDefault();
                const email = document.getElementById('newsEmail').value.trim();
                const msg = document.getElementById('newsMsg');
                if(!email.includes('@')) { msg.textContent = 'Valid email required'; msg.style.color = '#c44536'; return; }
                msg.textContent = `✅ Thanks! ${email} subscribed.`;
                msg.style.color = '#2b7a4b';
                document.getElementById('newsEmail').value = '';
                setTimeout(() => msg.textContent = '', 3000);
            });

            // hero buttons
            document.getElementById('shopBtn').addEventListener('click', () => document.getElementById('productSectionTitle').scrollIntoView({ behavior: 'smooth' }));
            document.getElementById('dealBtn').addEventListener('click', () => document.getElementById('flashDeal').scrollIntoView({ behavior: 'smooth' }));

            // flash add
            document.getElementById('flashAddBtn').addEventListener('click', function(){
                cartCount++;
                cartSpan.textContent = cartCount;
                toast('MacBook Pro M3 added to cart!');
            });

            // cart icon
            document.getElementById('cartBtn').addEventListener('click', () => toast(`Cart has ${cartCount} item(s)`));

            // init
            renderProducts(PRODUCTS);
        })();
    </script>
</body>
</html>
