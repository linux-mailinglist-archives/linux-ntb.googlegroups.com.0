Return-Path: <linux-ntb+bncBCHK3VHCYUIBBM7R5PYQKGQE6EAB6EY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C3315362B
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 18:17:41 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id b10sf798594uaq.3
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 09:17:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580923060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Od5KPNNmobpLF9lI5kGPFBicx/NMVrthvjSNRU8kFWTmMYgfp3zqljjVvjYmbgTMlW
         YWHYHR+EGOSfoJn0il9baNXpFwYKwe4PvzM4NkS76z3ML2/wpgEvMjnVDBhxEiMCx+1r
         JcNsK9sbjdGvzOXNqIB95XBrWD86GsFF1hJkyG5BqIjRbZJZvX6ABt9Fiza8TqtQf6HW
         5eFoCWmJfi4YCCiKjNIlV+MprDLN4Iz6Z/Sc20crYEjGn6cyfZULpeNZuPmklB8SxCGO
         O+xNWaHUJ/GpWYxowtrrJq69K+IlYXEadp3qhb15DQnQomKAxqu1a5XclKBgsYhkBuaw
         q/EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :sender:mime-version:dkim-signature;
        bh=8AG3y4HY2ZGxc6MdiMqhpOrWFHG8/lgXJhjiuY3D+vM=;
        b=sD/nLt5xL8a7yJpyRb8ib5GsB8vchDJQ+jdPaBsvUbJnTnf4I8sjO4rIUZZneoD9rP
         jjndoRSQNQttlyxhFWRBAcuO7E/0pBCICkr07ZPdrEcZBK8M5Cc/5xOYZii8u3hsymTb
         pdxJHRfxw/lZoIkMZOpRbFxVK2NAW5MAHtRJ3lR5Cl4bvbNp8r/HMH4lXlBL6oHvGRzI
         WGcEnw5pA2p+LaYQweLa9TwfFi3Vk+pVDI+2MXZnxKmt+0O9rR7Nmf9CZfWSOeDw4bjE
         G/F/Y/CXnRfZZ6M7RoTA6YC5aXW1TLETgR6znzK8zIndClfakG/xDkgeUF4+2QGMaTBx
         gcRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SjedPgum;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8AG3y4HY2ZGxc6MdiMqhpOrWFHG8/lgXJhjiuY3D+vM=;
        b=XrZ+RVmegd5PMyznbQMuXKLDFMqrespukn4V8nKhrEH9rOz1TqBCejR8ooPfYcgZBa
         5zXTXiYl14uG4i1He3S0SJemyoGVVxiOVmhmdn5/5GyWGdrUCUk1kjFEgH3wG5jCj2Qm
         s7zIcm/zEMbhxUhE4lQeJZJ/1kW9hKi/Ftz7c0u1ypAFjJ/tcvxCeZ3JKJWeLADupC2j
         rQhTPowuwoadWRSjd4aTjkJZk+fZgW/lRP3/5jf6blPfplfOgAeF6l0UpihaPOq1V2wc
         8IW0F5HYpolZQumeV/TOXvQ0KeaLCbtM62c0cFNiD1HzeYBtRAhtTUAGc0CXODuNdeqj
         b6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8AG3y4HY2ZGxc6MdiMqhpOrWFHG8/lgXJhjiuY3D+vM=;
        b=NeCWxEqHQAekOcCqwZPti+yjcPYsdIta6ULH0YKTGTAh8bZRXVk/7yESiNlqkj/HSu
         YufyMQ/pL7/NkoxT5DnRgdT7TIjMNW7BOn/sO7PIfgyZDR5MmaEjIKnc+s+X+9f0lzLE
         Q7fJI/dLeiHmWOG6qiaDjUWNcGGK7spWERMEFsXlTxwgqhvoKaqKFnvSvCOl1KFxCMXF
         JbJiPKLrTA4KkL3epJecayQmr5fFGtaCtPmOE50LaN/UFqa2cDZ8xcv9uQCjL8LzSD9b
         nbLkLO3pTZEPdPo6hCoEPKg5svkTWZh/4TGPqyg1o0TlCS+fS2BKB7LpUoC1PvhEXEhF
         UPQg==
X-Gm-Message-State: APjAAAXyATewwhJq5IA0lFQ56xNdG6q/rFZBFhTpmMNmxSBukTxHGyb7
	13bXPiHNIUvvchdMkamcaeA=
X-Google-Smtp-Source: APXvYqwHBYJckv+h6PDXmGIi38vOuzA2RVvAnfR87x/GI7Azkur9xindUItqnWHTHIWHg+JNo6Qz5g==
X-Received: by 2002:a67:f102:: with SMTP id n2mr24055964vsk.138.1580923060124;
        Wed, 05 Feb 2020 09:17:40 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:cb82:: with SMTP id h2ls389687vsl.3.gmail; Wed, 05 Feb
 2020 09:17:39 -0800 (PST)
X-Received: by 2002:a67:fc96:: with SMTP id x22mr22308174vsp.33.1580923059566;
        Wed, 05 Feb 2020 09:17:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580923059; cv=none;
        d=google.com; s=arc-20160816;
        b=PXlRiNUFC6jKDmdfC0eMoGYLD7lutHEbuKrbjQIPoLuoP5UOWivsfgrxhIIL9/USLV
         90ULv/o1US+juGvbhWAN9t+qlk9sXSQGJ7sN1HOCSsKrumOFO5vLPh8UgoQ7/q5dldMM
         nNhBh8ZdQmBgOu7ecbpiWnw4xSL+Ttb48FYP1CY/OgQ6Yvt035+L3fHHthP/fRVB9pTc
         SfigwM+UopwAlzFPSyly7MtN+etk+BTd6DV04zYIGQOk3AITzeB3uqP+hyFfw80C5QvC
         65K/36X+5VSjsoqdW6nmBRD1P6i8IJaLRJSdoFSxPkgej/8W5TAHxUfMKSyUSQ6gmiHM
         zltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fJZwWhExGC98e9aHuYaOiWB7cCCXGncBoKgbfkR3SFw=;
        b=kl0M6i7kndTn0b5HlEApSs9XxpuwFItcQN2Jr4NND74xF53GuS6NDyv6jofp7spL/p
         nsOjK99vqP9pfQQ8mEXXvYMiEePKI+Rrz8D6rwGrWCO/vxYyP7rdfLrrK2Y+5PCf5m7J
         l+FEWuLywa3MB+VRxFKxg12qyEOFjurg2vsaP7a9LVDzvCaDhkPggza1HRVUGSiE89Ug
         8sT4s3SUK3zem7xASvpZWxuR4+egSH4W8Jzg6CSUKpYhRbB/okMyMwP4yZDyNh6TQnvU
         fES88+fEpSKmwRYzUbqNEjqpKfoNAYFR1Kyz8yrgv1w7u5DPRHtCOmGu45IUxZxtEzbv
         B94A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SjedPgum;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id o19si14368vka.4.2020.02.05.09.17.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 09:17:39 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id n96so1245831pjc.3
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 09:17:39 -0800 (PST)
X-Received: by 2002:a17:902:8682:: with SMTP id g2mr35181161plo.336.1580923058663;
        Wed, 05 Feb 2020 09:17:38 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id l8sm357945pjy.24.2020.02.05.09.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 09:17:37 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 0/4] ntb perf and ntb tool improvements
Date: Wed,  5 Feb 2020 22:46:54 +0530
Message-Id: <cover.1580921119.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SjedPgum;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
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

This patch series modifies the ntb perf code to
have separate functions for CPU and DMA transfers.
It also adds handling for -EAGAIN error code so
that we re-try sending commands later.

Fixes have been made to ntb_perf and ntb_tool
to use 'struct device' associated with 'struct
pci_dev' rather than 'struct ntb_dev'.

The patches are based on Linus' tree,

git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

Arindam Nath (2):
  ntb_perf: refactor code for CPU and DMA transfers
  ntb_perf: send command in response to EAGAIN

Sanjay R Mehta (2):
  ntb_perf: pass correct struct device to dma_alloc_coherent
  ntb_tool: pass correct struct device to dma_alloc_coherent

 drivers/ntb/test/ntb_perf.c | 168 ++++++++++++++++++++++++++----------
 drivers/ntb/test/ntb_tool.c |   6 +-
 2 files changed, 126 insertions(+), 48 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/cover.1580921119.git.arindam.nath%40amd.com.
