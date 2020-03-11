Return-Path: <linux-ntb+bncBDOMDVMI5MBRBEGMULZQKGQEIZIPRXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F8F181396
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 09:49:21 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id p21sf1255556edr.22
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 01:49:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583916560; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZEIzJOv7wKr1pEVVykauvA3R1gMwdEcYd1Sg02SGprDaJjo/riaXKoG0FX0LiJclk
         a0nIKZuFwCKp5atEMUfpZvc/EcXoQjXVX13/mEXxfGmNU8LhHs0N9CuwhlIwxd7dd8cq
         h2GLpkteppvg8lmFk+2I9gJZjuucglo+G2vZ9dyDPOrziKXBMh10jtQZkHh+UWMkVBXk
         XpDFYB1/bCPYE+uwslFF3wG6jX8zkScUgPVTcyIprdqykm2K35NoHWJLZmfATPHIm5dT
         eDE74SeT13tNfSgQo+Ptc1XPZk9gVKlxabLAl8PdqraG6D2Fv64rei5ynNWcnwxKjPCR
         k5CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=IHZV0LGyHhyYQ0RFkY2Yu0rYkDAFIiY4HH9pv8n53Wo=;
        b=MC1zHbxkVhiZ2vjT/MvjZZpb+IF/26nrFtk5fTFSkPPuw5taQtoLpq5x5iPBZSLiPL
         SEPSQ8enJ4BgRD8/dCxAibgiXqj02vDhgwsZfnVWnONx8tYggD9wvfE797I5iQl7ATlf
         HYLBSVnVAydBuVi9hG4YqjUpiyQTXNL1EcK001ujrUrGMvv8xTHx6JAGwGVLHCahVQxM
         jr5/OccprBxnX2/AkEvkX7UstE+aVQgy4KFEM8YQnUedUXS8iUeHVf09gKzsN1M3nuVt
         /66Kxqpa1u6LvVrMq5Z/WkYn3DgJZX1c7awaNuC6/eAsI/+hgVB9Ssg6HIobPyaQGyHC
         d7bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHZV0LGyHhyYQ0RFkY2Yu0rYkDAFIiY4HH9pv8n53Wo=;
        b=EDMaVZ+XASO28+sSSkLRLCMuzuluGfeiNUBAcyxihIxyYkU1DcPk/FaoPhVnoJ8MSv
         8ObV6gsIrxWVWz5nJursyh/13iMXj/b69/WCj0ax2XZdBYNsoGnjKgM9WumjjDOQUASa
         ldcZMqFCunE1HdJkXRWcQ7SYHdiXjnr7yVTlaMifNYNTMh85MUSXmOPf7y8uQz2o/mNZ
         69/KAxVIBXXdAzXAR/gGc9bVDG4zUzxGLktVEHPEu1Hz0HzRyag+eSUUOMwedjqH973e
         jC6fsonySHZpVGwOpZcv/VDw+rlXFoZTP3fcHer/hCA0fAEtK0KEpJYlw5XEfhUk1AtS
         WTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHZV0LGyHhyYQ0RFkY2Yu0rYkDAFIiY4HH9pv8n53Wo=;
        b=mWYY7CBFbYXUrs/leoGIT942DeZdy/c+Vnv2sZ2Pu8f6Gs7mfm69F9mjhxnbn8D3jw
         Q5bqgt6yBb9gRa00IRuiLVqkaDwrzf4bvu2Iv4fkhzGhFV/kAlICy9Xi8u7Aiy77J+Yr
         HKKQ+YCj7ohSHhhe4S5jBn6v2jMVEqn/AW8mj5KLLjG65MIqvSuQO3iPJ9hAdAWkLJjH
         xrIrbtDR6cnFQy3A7yorKxtPJ1G2Km6oE5D/Pfyvm+ykNAWrT/M7LE3rX1qTKO1UcCak
         hpaq+SUA1u2A7yrugx+FxdvWji+Nvs1iYirQ5JkNxa/9JPY2riDWrVDqbiXoA8ZrgOHi
         BSzw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3oKnSNYxEG0Bhp5yuc+6x0mt5yhiBBSQb8dbI/GmAoV48LwENz
	X7AzC6dTPS1wwp4l5+x4I+A=
X-Google-Smtp-Source: ADFU+vsaC5Lk9BJz+mmVY5u8kDUHxI9SJoP9PlgCf9K4ay9rHPZ4q1/CSZ06ZJ6/2+utdhLJYU+4rA==
X-Received: by 2002:aa7:d551:: with SMTP id u17mr1776518edr.69.1583916560750;
        Wed, 11 Mar 2020 01:49:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:492:: with SMTP id f18ls1052284eja.2.gmail; Wed, 11
 Mar 2020 01:49:20 -0700 (PDT)
X-Received: by 2002:a17:906:f24e:: with SMTP id gy14mr1470539ejb.165.1583916560287;
        Wed, 11 Mar 2020 01:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583916560; cv=none;
        d=google.com; s=arc-20160816;
        b=LOBjiBQgnWhRdf7voE7LuuAlMAWPqEJGIjJFbIIJhEr4tw7/Ky+f0wCpu8hB49lgqw
         lERirNV+G4qwwU17G1s39caZeDwIi61aBm/jA4mL5m5gd0HXA0+QdDn1JtVlIEfyyJbL
         0nAot2S10+e3uxwaE+kgDTEU3DsrlJCx7w4CZKrYc1A0TUAzKW9Ax3RdKYYFdcnFeys0
         AwlaXSnHOd5Lm++ezrhpQMz5egnXEtyR63PwNFX24Pe+A7zDHIOFi/rPteENpMZzmaG1
         BL7GDIt5cAVY0tWvlg8kjsFsAQ1XfneZO4Ia8OLl9dk4enJh2LZY+mGZqsAqR6zZFFDT
         SPfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=v5gL7VaMPy6hpQiq/G8WsDiu2H7GpUeNGoMSLVv7dEg=;
        b=I3XKRwbrRLRvkbBpUPAI4cIUfXx/rwmr3PNCY+m9+eDW5Lsb/OsUsGHvA2mng/sZ0Q
         aAYlgDTKysXy16wYuOVZ5YzJd27Ko/EtOE0a0TXQ8QtPjZSTeoxNpwa9ksTPzoC3pO2F
         qZS4y1Jmx58UYOYjdq9kRkPhFku0QytKfxCZ6M5LwdlVWN/y/9AYFCZtmBxMwrEr+hUF
         OaEnYBNob8pnOIgHp+1dzpKdNptBBL1pfa2kNXyDbu+Bte1hJUnlP72QZwZqLFnfkYpg
         NkKEXpD0TymPKcigE9c8jBvTV+MFUly2fTjM/YP/vqDIyOhARJXTtmdnPfIZGFrbc5OQ
         GG5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h10si82584edn.1.2020.03.11.01.49.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 01:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 4F642AD5C;
	Wed, 11 Mar 2020 08:49:19 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
Subject: [PATCH] NTB: ntb_transport: Use scnprintf() for avoiding potential buffer overflow
Date: Wed, 11 Mar 2020 09:49:17 +0100
Message-Id: <20200311084917.18592-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-Original-Sender: tiwai@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=tiwai@suse.de
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/ntb/ntb_transport.c | 58 ++++++++++++++++++++++-----------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index 00a5d5764993..e6d1f5b298f3 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -481,70 +481,70 @@ static ssize_t debugfs_read(struct file *filp, char __user *ubuf, size_t count,
 		return -ENOMEM;
 
 	out_offset = 0;
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "\nNTB QP stats:\n\n");
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_bytes - \t%llu\n", qp->rx_bytes);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_pkts - \t%llu\n", qp->rx_pkts);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_memcpy - \t%llu\n", qp->rx_memcpy);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_async - \t%llu\n", qp->rx_async);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_ring_empty - %llu\n", qp->rx_ring_empty);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_err_no_buf - %llu\n", qp->rx_err_no_buf);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_err_oflow - \t%llu\n", qp->rx_err_oflow);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_err_ver - \t%llu\n", qp->rx_err_ver);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_buff - \t0x%p\n", qp->rx_buff);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_index - \t%u\n", qp->rx_index);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_max_entry - \t%u\n", qp->rx_max_entry);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "rx_alloc_entry - \t%u\n\n", qp->rx_alloc_entry);
 
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_bytes - \t%llu\n", qp->tx_bytes);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_pkts - \t%llu\n", qp->tx_pkts);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_memcpy - \t%llu\n", qp->tx_memcpy);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_async - \t%llu\n", qp->tx_async);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_ring_full - \t%llu\n", qp->tx_ring_full);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_err_no_buf - %llu\n", qp->tx_err_no_buf);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_mw - \t0x%p\n", qp->tx_mw);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_index (H) - \t%u\n", qp->tx_index);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "RRI (T) - \t%u\n",
 			       qp->remote_rx_info->entry);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "tx_max_entry - \t%u\n", qp->tx_max_entry);
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "free tx - \t%u\n",
 			       ntb_transport_tx_free_entry(qp));
 
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "\n");
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "Using TX DMA - \t%s\n",
 			       qp->tx_dma_chan ? "Yes" : "No");
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "Using RX DMA - \t%s\n",
 			       qp->rx_dma_chan ? "Yes" : "No");
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "QP Link - \t%s\n",
 			       qp->link_is_up ? "Up" : "Down");
-	out_offset += snprintf(buf + out_offset, out_count - out_offset,
+	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
 			       "\n");
 
 	if (out_offset > out_count)
-- 
2.16.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200311084917.18592-1-tiwai%40suse.de.
