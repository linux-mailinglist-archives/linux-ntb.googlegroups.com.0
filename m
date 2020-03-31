Return-Path: <linux-ntb+bncBAABBYVQR72AKGQEKWFMQBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DBE19A2A4
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Apr 2020 01:55:16 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id e5sf21788786ilg.3
        for <lists+linux-ntb@lfdr.de>; Tue, 31 Mar 2020 16:55:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585698915; cv=pass;
        d=google.com; s=arc-20160816;
        b=rG82jYmCLBRG9Vp5G5lB2Nvhshv04AvBYTmwXPXKmzipF6ArrvP5RskQXZ/6nSVu0n
         ybUCgA+OuqWnE3Udf5uJ2qofwgOziKtju4pP3xwRJ5QcKsyamKLLe4ERv2QZFmC/MU0r
         M60QPKpjbaRM59Xl4ugaSoLTXEaNU0Xx3Y6yIcqCLmVFy9wwVDKMdKgkIza09WSYesvc
         /Hi6uWYr+rAsUQqWoCHMOTVlagUXZ3OeNqGM9nldQbN2J2BOFz0CmQlt1J410i/q6S9y
         JNZTCwTFjlmdeNcOrQkztva72iFT/qVXoTzgTHBUK+LBygTB5+uSxw7lKXjhtyYALq7M
         Vz4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=1mjQxWnhbIxR7iYMLHvnIxbdG5BIjxh1TMcPlrDqBxs=;
        b=mopLYYQVi//DhZQb4Se3A4wzewNk4Ff8ASgFx+r3YzM2Fqz8fM1ysjm+M8TjoeCxZo
         3aHZ3s/K/wUnbIpoFAqbeurNTVvSXOTC14rk0PioX2NsVU5Jlqwxgi73TgF4kH/mgE8I
         754i2d1m5yeDBERqM6Nv2FWsX9XjgmarNUT7kkLJz1mYnQKsCem4AG2F2EdWkskxn4ra
         nbwhM5SVNErVakm9HoOdyzguu+Dw00zF4sHUuwmAmVM2qdwOfj2pa794sumVB7w2Zspl
         aHZLQD6F8fRXhVjIeflS0KrRwJhyZaCR7r4DiXHH5xZLUfg3W8iNGELXkJit22H4Y36e
         aIng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gkAJAf7g;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1mjQxWnhbIxR7iYMLHvnIxbdG5BIjxh1TMcPlrDqBxs=;
        b=pWCFv+1TVuQryt9plilCgI0fNUhAh8DAaAqO44Ln5WFZZcqMzG/4UtwfXgkZyre0Ye
         M+FLcoLqn5aCsEqBtrbby2rTL6hnwuXJm+1XynclnImjrIgEfDV50GR+EH4yZSGurs4a
         Pjwk6LZ8LjkWpoDQcsX6oIk9wFxE32EK2zfHSjYvlyfKjcaUAoigBTBTkSvhgsvmbMs5
         H/F3H7RNP5TflusECmhEe3sC0AuqWD/28K11LuU0spHvi5yjigNp8j6PmdWX/kXEpRzq
         ZpQXvPeUc3o5FcdqLPCGvvkBkOMduoP5dotJc9dheKRDBNh2FMWHaMJ15ppYRijmVtVt
         hejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1mjQxWnhbIxR7iYMLHvnIxbdG5BIjxh1TMcPlrDqBxs=;
        b=C4Xd2Ubf3rJpMkEFoxxG+fGllXjgzrFj3nJztgHhWOgZQF7sdjLpAbY6cg8AmqsQNc
         uOOUoXWKwN38HU9ISg0e9T9tdpCNqAXKTDN5EcSm1MlG4vAEOp+zJAKwsKQwZWU4UTBn
         HVPIBJBhRYHwoh9RqqG3EgPogdX+BW+1+AaaQEo5w5vN4biwhOIlUOFxGGX6UU9pg75Q
         IruVkNAv0pS7PdBJqH8RZ/wNyDd1AmOjE2N6N4WB69dzFp0+BPhJRnuNYbMJmJa4jhUy
         kekEgptSNJXuSHmaNQrFW0kNeZOGqD8/8ZB16BZpXQOpvhtag6gWK6F5JRxckH2SjD/x
         bFuA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2U0ngbG7JQC+n3euPPrZ/AKROJEV525B5ONULfE4lG7CjexEA5
	vOtnjf/gTWOO7bWoCELeNAQ=
X-Google-Smtp-Source: ADFU+vtRBIzcpQ0famNqJZBpzdrhSPMxuYr7iu6sYYA6c4KpuQrHS4Sk40GJBhkXLG7G4CpJzawmWA==
X-Received: by 2002:a02:76c2:: with SMTP id z185mr17812941jab.76.1585698914788;
        Tue, 31 Mar 2020 16:55:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:d2:: with SMTP id w18ls3173291jao.7.gmail; Tue, 31
 Mar 2020 16:55:14 -0700 (PDT)
X-Received: by 2002:a02:8c4:: with SMTP id 187mr17748134jac.50.1585698914468;
        Tue, 31 Mar 2020 16:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585698914; cv=none;
        d=google.com; s=arc-20160816;
        b=PbXwA99w3PbiutTIhrygTo2aCuA6VE69Pgvf6zAxiBDCU29KHtZe98AI0TnX6sNKvB
         x7YPDisAslT/W0Bx8T9dXanhPk3bZxmOjmtHhLEPykp+1Ujds2hIAQtTopwxUNHIuY9b
         kXMeSjmPIajyAs2g9TlnHL6J85ER1IHT7WGh2qdGjf0iheCY6ba/S2EP6flmM8lU4XwH
         ICOWLW+CZxchrCs5EcoBaDiUYfiU4BkvriAGdUTs4sp7Awr3Xmsg5U6T2p82vHY6t7us
         SRQBErbU13j2NiWEZNFM8w7D0itahkIepwVj4gXU8899hCZ6efxwgTrBrC35UJ3SBL1O
         gFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=uUT5LM5+h/E5RA0F5XP4BfAM+i7bHO9Aj6DlYGMTgRU=;
        b=U1Gd5+RJdFuO9nDBlHyWxciq4C5Z1W8W0w3xN8nAZXMi375BULQTkNMcOc0V2oLUVR
         6ZAvJs1U/2CPjEPgOEkOrSpIG56jNtxDgLh+QQRLJtPIyBF7IWXkHMtyVAGPAoCMFFie
         jbvJiQnX/u22Su2qwM1KC6K8Jal54VtoYfqeoaaOGRkDgEmYx8jqfEd45e5I1pspwVrp
         JnRHuaB7hPHJGtf38YcKP8hzRsIaocgwjIg9N/4x1pSSDPyIfp8yrNS8fA94OGpfrhVl
         aXHznGrhLDQtuUaS2p19iNvYUVagcmvbYgylfLFPY7I6AGVOY4Mzx18/Nw+Rlz9XK8bO
         mIdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gkAJAf7g;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a3si27023iog.2.2020.03.31.16.55.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB bug fixes for v5.7
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200331152721.GA1719@athena.kudzu.us>
References: <20200331152721.GA1719@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200331152721.GA1719@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.7
X-PR-Tracked-Commit-Id: b350f0a3eb264962caefeb892af56c1b727ee03f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 56a451b780676bc1cdac011735fe2869fa2e9abf
Message-Id: <158569891371.16027.14099209625031293428.pr-tracker-bot@kernel.org>
Date: Tue, 31 Mar 2020 23:55:13 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gkAJAf7g;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The pull request you sent on Tue, 31 Mar 2020 11:27:21 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/56a451b780676bc1cdac011735fe2869fa2e9abf

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/158569891371.16027.14099209625031293428.pr-tracker-bot%40kernel.org.
