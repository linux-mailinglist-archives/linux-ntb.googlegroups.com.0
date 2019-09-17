Return-Path: <linux-ntb+bncBCS4BDN7YUCRBMHHQTWAKGQEVFIM4HA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC76B5622
	for <lists+linux-ntb@lfdr.de>; Tue, 17 Sep 2019 21:27:46 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id t11sf7249524ioc.13
        for <lists+linux-ntb@lfdr.de>; Tue, 17 Sep 2019 12:27:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568748465; cv=pass;
        d=google.com; s=arc-20160816;
        b=A1Aw4LOXPDWlC87k6XYpRWP/4KMR1UvGVJCSYbyh7JFTFtppOF8txt2W9HWEP1go4U
         kiuKei1/zopwapioDlp98iySC9PJtDHhKgUI+xq8YpkBo6hBJGUinGMoiZypWNweDZyC
         BI01JQY9PSqxrzBpZjbbiFs/wFQnquot7hGf4Th9Trw+uSJ9cUjkIlsUIzjeAd1S1Isf
         myw+2dCAUi30FAgSapXi76sdrDojfn+mMceX9kHhbp2I1Pr2g+MBGXWg4QOIPQ4yBY6d
         O8382/B7mH4UBcaSEl/o04+QhnqdHZ0kNz5RfiuFHNQhIcdtKWZZXuWrPFbDwgm29GQp
         kZNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=Eadj4t49JipjwoQx4N/7vQV4dx4iGHO/e5ZIO+EF5lE=;
        b=bu9QzE8XgiQROh51jbNS2VeTZemu/LDV//C2Gzg9uxexC+ilwvKmI1jAbuETDuBnNY
         jCRLclpqkXT3FJaG+gvqAtToiPpg1gm0UAyOfycre4hUnib9RPsixT/C6+c6FmVJ5yxi
         xv6a49hdlKHFNNaJLYUxUb8paICO8zlwjDBuUxXSQjzJppUS0ZisIlTFuXDzBiIA2MVj
         fsCUxq2CRNJAxLYEr/yGmZYPTyz1YUaq+KxRoYUE6U93EBwCFtpxa4lF+8qfycRiJJb8
         49XnfF8DGwXtUg7XEu8YjSZpwssU7Z+Yssqu+U1YOulnRVpPm8ySB2bglLhnpRhDD6Tu
         UX1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=UdkB+O+P;
       spf=neutral (google.com: 2607:f8b0:4864:20::d30 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eadj4t49JipjwoQx4N/7vQV4dx4iGHO/e5ZIO+EF5lE=;
        b=IuL6IP4nySE86nYzNZL0UxLTS10rT1zy0oBsVlH5+so2v3JsUasKlF1wc+Uo49f+o8
         TOuDfDVR9oXdiyGx8AXDvOF52MSiGREk/4dNNCFlZV6sSWKLEu8uFmNCD9UQ3nDfrCOe
         lYEC+DSwotDTp7jnfTG2ixXaZUiGhE/oXhxV1OKKOplG6FHXHRAViPv1SKs3WK4gC3vv
         TiC2l4sbyD2NlS586RzuggEtfi5694P92jOp11pNZFcbTNOdy0rGIQf73w5xU66FdRsG
         hJQoZB9VeuyWtwG8PAcz2lQE7CV+ebC0KsXqgHNahqrgcmm51i66mW0yT11YEjIj8NUX
         l3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Eadj4t49JipjwoQx4N/7vQV4dx4iGHO/e5ZIO+EF5lE=;
        b=D2lwMN2Gn3q32T8XQONjo4LHQjg7/0QPsXtWsquKxrg8fFpujKIj9atN32Uu/k3qs1
         FJa4dO5KQ1WOVqgh5nfGUNcu1yglGdMN+haTFW+B4p7c4+lCDVT/WJvNNaefh/cJdaq4
         V7uFPlEZQgoukN22NBwsMVxMmI8fed/g7OZoopxZ4NUDooHU7lEP9c9FS0trD/gA/OJ1
         W5VyQpWn/JOCGTb81+DQV6aYjD4gGH8Drr0CoBKzEdBpMn/FiXgmOFf/YtfYiPBtzY5A
         80ZE7DA76WpNQqQEzac7z3QOTkb85jys4EXE/A0RYs9UdMwi4EGbSdyKBxhs2NaGwSsp
         oc0A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV2zpY4EdYkoom5YKtQtbuEuoW24wF2VpeA4Ed6nPFJdhlFl4kR
	2nmKob49v9XIfrZehlkFbLk=
X-Google-Smtp-Source: APXvYqzhvYcswYOWEFwwXIfpELVc44dbH2vK3lM2HjPtHZA5C132SYSG4e6yToponXVGtbBP/WartA==
X-Received: by 2002:a02:ba17:: with SMTP id z23mr160052jan.24.1568748464878;
        Tue, 17 Sep 2019 12:27:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:737:: with SMTP id j23ls573264jad.15.gmail; Tue, 17
 Sep 2019 12:27:44 -0700 (PDT)
X-Received: by 2002:a05:6638:350:: with SMTP id x16mr98871jap.29.1568748464419;
        Tue, 17 Sep 2019 12:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568748464; cv=none;
        d=google.com; s=arc-20160816;
        b=S+wugZ4JaoDdj5QpOv4yMWTkc9yPP1hAo4sKTsHJkIsyIi1wIyH43vecqKLa3Y1KIJ
         CXtmJEJaAmFWHoZPaAwo6J6agjezlT5CbnZFSnq/SIRTBdhKXjoxwavlnJcRF4fhVCkV
         FROOcK8zehtYtlkQ3YacjwweL0fipcxYNQ6kEgYrQY4N+SH8Ggh318DQW+9Va7aM6+Oy
         jbcQXnL2DoiGdIS6BdS/X8uf8K05kemgWc8xCA9ov5W+yQEBrs2Zae1pQWIfvwDscFyJ
         2q3c/X9rRHKSScCqh5tCIIyDRgkr0C+eD7fbdbglJzNtLBmYlebDuQ0ppM4fwTlt0i7S
         WXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jT/MKd+GQT7INUF9i0fmDcCKINSsKo7XTuZvsCGVlVg=;
        b=mgNRale+Vrf+KcUugEDN0DQkMKXX1fdbH+aB8WeSAfGo+/wrVvmVciBB4+raTomKcz
         R6mt8i3sSEF3FVkSNfAofYj9YB9ltIdo8WlLdKMoxyY+/t/7GpI87IqPQ331TyK96xLk
         fEOhLWBR9QRo5WABXAQCO71xpTfgAVexntACNKfuF2+SHzI+SKzkzobpH5RrnpBTbznv
         e3bTAmI9O2K8VR9rm2ZFuojKZ5oQ+eTHIA+tGAyK22objjEqdj/UB04YgSTHy9gok1OL
         Czd1g/CjuIHyfq0z11w0DdV67ohvEMbnll97QbE2tTFzdzfR57RibhWqpffC1Zmh0zlR
         KxXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=UdkB+O+P;
       spf=neutral (google.com: 2607:f8b0:4864:20::d30 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id s5si464288iol.1.2019.09.17.12.27.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 12:27:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d30 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id q1so10473199ion.1
        for <linux-ntb@googlegroups.com>; Tue, 17 Sep 2019 12:27:44 -0700 (PDT)
X-Received: by 2002:a02:1444:: with SMTP id 65mr137801jag.58.1568748463781;
 Tue, 17 Sep 2019 12:27:43 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 17 Sep 2019 15:27:43 -0400
Message-ID: <CAPoiz9wcDoUKn8YQvS2LpxDs9c9OOx56Z4Q5z5AQBqw5SmnDKQ@mail.gmail.com>
Subject: Adding CC license to the ntb wiki
To: linux-ntb <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=UdkB+O+P;       spf=neutral (google.com: 2607:f8b0:4864:20::d30 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

Someone recently asked me about using the information present in the
wiki for use with their internal documentation.  I think the more
people using the wiki the better.  So, I gave them permission.  To
help facilitate this, I think it prudent to add a CC-BY-SA license to
the wiki.  So, if you disagree, please voice your concerns.
Otherwise, I'll be adding this change to the wiki later this week.
Also, if you think this license is too permissive (or not permissive
enough), please respond to this email with your concerns.

Information on CC-BY-SA
https://creativecommons.org/licenses/by-sa/2.0/

Location of NTB wiki:
https://github.com/jonmason/ntb/wiki

Thanks,
Jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9wcDoUKn8YQvS2LpxDs9c9OOx56Z4Q5z5AQBqw5SmnDKQ%40mail.gmail.com.
