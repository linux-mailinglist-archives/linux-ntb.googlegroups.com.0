Return-Path: <linux-ntb+bncBAABBT5KYHVAKGQETE2BDIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E18892F5
	for <lists+linux-ntb@lfdr.de>; Sun, 11 Aug 2019 19:50:09 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id h27sf65011143pfq.17
        for <lists+linux-ntb@lfdr.de>; Sun, 11 Aug 2019 10:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565545808; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3LQFWkZwQclRkm1LW1ZrAGoahQi++CCUmW8tpJVRjiIUDuqVZ0Pw9Mo6quIZBu1Bm
         dfwMGnabNPSaqm+P5cM4eQvYvVzNHZDyOtO4UJhpOG5DOs3hZWwRZ8B+YOLqNYt5t0D1
         2ShqLIO8ILl/NMWl/6yW9V2fP8yhYDK7m8UYw3WZrztUU7/DEgDc7+YtNZNX/YH/MMMx
         RQJySEMSnYcpA3G2+Womrp8mrh1yKi+e752nBJK+WYNvHh/wzvwIrqnXbK+R80C8Dv9T
         0NZ1jQXzqQWJVrKR//1Y5ime4yrc1QGaYEL5OW9T9//kUGU8gARLki1VDtkoBerd8y3p
         32dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=Ytum4bsNgBcf6cIIO6AJ+/gTGs2PUFxhzeYYSDfH33U=;
        b=bKkA3kbv6VUDp4LSNLfXTfZLhqpL/N1SfmSm+MujH51xlCroLDHAaKmuhhT3Zafujf
         ixN/9+vVY+WPn/L66gQv3exCvKxXsKev9C0We+HWsT9v6w41SFQhyoWXja1cKnk6vDsr
         aKK1orAIAk+nhv0BMxo6/avBK2iNqJPcSzoz4OBXJ6/fhvfGsc+IFVEg+8JLOFxC5Ta5
         kIWAMzpy36ePMFWfEtodhtbQTsPbdjYTqUZcwAgYi1mlGKB+8+kRHBw4vH/CyhAH/Aa8
         E3QF70Quw4S1me+6/0ZuL+7UBp/uxFeOA9Qvpi0B3MEPw3sD/koTjBISoK7T2FNLAV5p
         CkZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aVpcW7dd;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ytum4bsNgBcf6cIIO6AJ+/gTGs2PUFxhzeYYSDfH33U=;
        b=P7B2rx76M7+JtuIS24XhnJxwbgXDetv3Rk5ZrLcylRitw2U5txijUupq6oXZsjOQ+W
         VISxYHPuluqUqXzCM2KvGeNp737kFWWyvidsYIOZ4qmeHl9JYoPgBZWcM6M/JOxCVeXi
         ddZEwMmnmvxE8J/gmlBLUNLcwQhernDqk6IL6qt9AAIdFcI9jAbieAIUbOUd+hNLQoy0
         brUQbw2zLqeErhoXeEKs8wm81Ch/hIz4UPkdh6vVcvXQE8UJWbkxfn7PGsxiQyHjfNRr
         r3t99dM8HFBJr81WI4M7u2TzT+BUtHhSOKa6kbK5iGLBPC9+yV97DxdbKFNCkO0YWxe/
         gL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ytum4bsNgBcf6cIIO6AJ+/gTGs2PUFxhzeYYSDfH33U=;
        b=TeoQSHT5NhlSsnEUHDpcGVEGIiQMyugFOgfaaSnEglosIgIvqW2dd7IZ2DfSTXmBDu
         j86SgglyxP2ZAHDjgFwu4GRcRw2VcpgrW+rvWlzAQiE8yCgCEFO75hbxdHtKUPTyHegA
         FqxZ4lSyEcxtVQqL9Hu765gMvj4S7YchwxTQTZTCcHeYPt6ncfYeBQSt3Rx/3t2FE6xW
         NXai7JeKPFilRNeroOai4p3biT0jGVu2fogqf99H8s2IlhgvxpPvg1KdRDRvaKRcrPvG
         HmRoBn1lx0oe1ybIG4eK8H4m9Rr79aKFgfAskVAH2btkOlAFPPGUQdUykbVnb83JbSuJ
         4OoA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXifCDb3dSz5DuFPEAMaCCzJ+Owz0Zg91iL9ELOEICsvQhvDNCH
	X4pZY1Cfz7F3VX3cFBppwHg=
X-Google-Smtp-Source: APXvYqwPnucO0i9wYqIGXkWo3uXIrp1pQspnuzUr3AVHd6eTVyOOWP0gZJbiMB+K+VtjNd3M71dIOQ==
X-Received: by 2002:a62:874d:: with SMTP id i74mr31622166pfe.94.1565545807896;
        Sun, 11 Aug 2019 10:50:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:b518:: with SMTP id y24ls23913944pfe.14.gmail; Sun, 11
 Aug 2019 10:50:07 -0700 (PDT)
X-Received: by 2002:a63:1341:: with SMTP id 1mr27436009pgt.48.1565545807532;
        Sun, 11 Aug 2019 10:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565545807; cv=none;
        d=google.com; s=arc-20160816;
        b=bxHy/XSD2T2b4MWNSagPF6NxiVJTYk/6TwjejoHnmpuVgr695an/0/NXO/Wy2ck0CG
         YPKLMp5qERCuZFvluvIP4yM2lwzPI5RLTwcN7fY+nTqw0dlwxFe/PwX9JVq+PqdHS04t
         bW4fE3+BhaQbeDrlgNhbSeI+d9BzsdxiNGjHVVIQL5VNlIo6J4F1LEKiifrXV6ZqJ58M
         OEAfMSwXJ5nuDAw9jtn20Z6aESjNumGKSjHP4tC17fy0jr/6qACkSrbnZbpfkBt8dXNl
         I2eKNAkgBr7tPzczIJsGDoieuR9C5DelqrFqKYQeot2DkaYWUVx12GbW7lUWsjfu09FC
         TtfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=fZaUiO/4ZsFPxiLlhbv9Qbd7Wq5CRpkB/Qdf/RSe8A0=;
        b=Q4USeXy8MUmjLMk80LX4HDphu1oz6hiJ86Wn9/kFLOyWm2ZDe2bVQ4fRoczPJFQ84I
         uss3R3J1UZIowi0sP7rYjF73/uaXKnhPSR+YdFIidlgKTZ7o54gMn65IXNZ1AhdxwGzE
         tsW+h0HxinBl1iA4MLLQdIOtWlb/H3uXuY5P5uJwZ32puwLpa7+UOmeTdd4ZClTJzRd4
         bLrmU/Vk1DmVYwB1c20fEb17aQ5SCrJfXbEP8q5Q4N9QdtGSQ758C42bc6NKKC8gw5it
         HVPM1jbgKjfRTF75Vs1EJs37ADbpfExSUIwx4y4h5ij0OE5DxrgQrVq8r/F+x7d0LI+U
         8krQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aVpcW7dd;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h14si4881353plr.2.2019.08.11.10.50.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 10:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB bug fixes for v5.3
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190811141703.GA12153@graymalkin>
References: <20190811141703.GA12153@graymalkin>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190811141703.GA12153@graymalkin>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.3-bugfixes
X-PR-Tracked-Commit-Id: 49da065f7b1f27be625de65d6d55bdd22ac6b5c2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f6192cb7429211bfaac1178c35607b0c989900b8
Message-Id: <156554580721.21169.6349916023834124246.pr-tracker-bot@kernel.org>
Date: Sun, 11 Aug 2019 17:50:07 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aVpcW7dd;       spf=pass
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

The pull request you sent on Sun, 11 Aug 2019 10:17:03 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.3-bugfixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f6192cb7429211bfaac1178c35607b0c989900b8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/156554580721.21169.6349916023834124246.pr-tracker-bot%40kernel.org.
