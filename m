Return-Path: <linux-ntb+bncBCS4BDN7YUCRB4M57KIAMGQE62L6V7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE3D4C97B7
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Mar 2022 22:24:02 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id y6-20020a929506000000b002beffccab3bsf12063502ilh.22
        for <lists+linux-ntb@lfdr.de>; Tue, 01 Mar 2022 13:24:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646169841; cv=pass;
        d=google.com; s=arc-20160816;
        b=ft/jFQpgzPjlaWeufOkyTl1tA0+Uq7BkPbvXa9K94VkpAk4a4FHMtqSmLmWa63OUT5
         VaQm+vkjPs7lh0fG6UbmHXP0y0Im7qKw4aRi6VOP7xjHxzUdlMBsbxiPiz2Kvml1QqnD
         qYbXNwPjlEXytKzV0lcoUhPNBnxNCqaMKgs0JgfPG+57yhXfFYhRC3illsXsTXcVN18F
         XseylB16Gd1jLGfNtrms/XX0tM+MMjMuCDGJW79l3heSQoXbAJdW+tCR7+ku8AO1zX6i
         Jz7HDnIEzebH081fe16jR5YnF7D4peQmhPZwy2/8Ic1QVaa47ApAyFYM1TGh3Tp5e+zB
         rxPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=s+ANVUz2RbJg6dOYUd7E/EwpPy526MjxZs7kowN2RLw=;
        b=S8GrgeFWjMXKQ0f05Pcy6LVNqLTRCQt+AxQU4y8Y/jnjrtcaus9f5fHVL0oeRRYXmf
         eKgCFUJf7jiKQrj8vI4/y9t4+F7tC4LPKWgO5MusNCIZDj6sp6TNlbq8bcLg3hi+HXcR
         wsnaNlLBjUYY090cpwEKU+7zKSJmXcXfXsXhMzDdZq6Zj696lwGH0h5GWobUZptBykE3
         FbwyPi8vOAsbnvje1B0ikHYa1FDRLwk0BbCK5QD3YImNgTqcVVA9xYyiS6Nz6B11jOBR
         jAfVJ7sYRXur0Ioo12/33p2JzM1CpYuNDmnozVvl396gfwlIp6Jq87+y0YPsUtQhoLCV
         lWxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=7EC0WjPj;
       spf=neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s+ANVUz2RbJg6dOYUd7E/EwpPy526MjxZs7kowN2RLw=;
        b=ScjXqTp4ca5YOyi75Tus1EJRLNr9rgd38O/koGm5pQBESrORvLthuvLO4BRsT00mnc
         /vcx/Ifn5kBrFArU71yG4lLHGt9mQuB+lvugaQqVO0BcdDkcKQD/dKmvpAmGBbIi+8ST
         G9etzggHM0N56bJ66xZhKYKTgeqEm0BKFdkdMF/oh+2e9eTyvMRSQedmG6/rc/XihryW
         FVG9n5MXjgIaY643O3is1yY8UY7yoGvdn9ysBl5xLWAqfQI/RzryG6WJ9j7FL38YJz+D
         j0uqJTy/foQ/qc6g/z/+suw8DlCqwN2dNpYcsywE/iXRd9UqASersdTIJzZ/FbQGN3zG
         L22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+ANVUz2RbJg6dOYUd7E/EwpPy526MjxZs7kowN2RLw=;
        b=OFRCSRHoI7n/JLEbo9oGb9FX5vu5bBw3J7oeXqkU+PWTGxawKTT60qKG86btaWL0SC
         UCbaCglJHqQBe8VG7yIqgsTBpccwBMAGVqbuuVT7XihqnQP+Di9eGdGMu7qQIkYXoIuL
         EtOQiKJv9ouaAPi+A0+ccVk5lY02y0koBYqB4LIgjWd+kKpnrPSyeSZQ3EdMqJF0yQSj
         c6NU8y1bA8LNLsuF1sP/oM/4J0kpll9BMl/eSSqQQ1TX9/MNxGDwtyYijWBwFyy5ZDoZ
         jd2YjzX4QHtlyZYNju+db8DWjwGq6rA1EomYYmYzPN9gXmHgrDsGJ9desZufbIXHy3sh
         YZ/g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532KV3xuyZjoYqC1RYMN639qHt+DR2SnkDw/vs3/Wwp99wYNyMVM
	T3wZ5EV433ZRZobgMyHBUFI=
X-Google-Smtp-Source: ABdhPJxkNSNs6R1z3MVEDdd6oEPYkIHfrCtvW02VGpI1W7LinT27aEU4i3DdyqNAttOFvIfq3e1UPw==
X-Received: by 2002:a05:6e02:1449:b0:2c2:ed4a:53b9 with SMTP id p9-20020a056e02144900b002c2ed4a53b9mr10127834ilo.165.1646169841466;
        Tue, 01 Mar 2022 13:24:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:b4d:b0:2c2:25cd:d013 with SMTP id
 f13-20020a056e020b4d00b002c225cdd013ls3465789ilu.3.gmail; Tue, 01 Mar 2022
 13:24:01 -0800 (PST)
X-Received: by 2002:a05:6e02:1c0c:b0:2c2:3d43:23a2 with SMTP id l12-20020a056e021c0c00b002c23d4323a2mr26304624ilh.148.1646169841030;
        Tue, 01 Mar 2022 13:24:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646169841; cv=none;
        d=google.com; s=arc-20160816;
        b=Ie1ICt3MK3TtoRRxo+Lw8uMjsWbdMJdwvidVUSZSc5LG9sfa7f9PWnGB8z335iGxWo
         BY8iXZnwuF/c4bXhnAVCF/lIL9M2++BK8HT6n1UGNdl+A640NNx9FUq3cyVIp3kE5Ph6
         zSTgPjGPR0+dwZNQ/Vfb8fp74nM+aBuPDy2Kom6XhX2T9cWqi8VPR8y6X7IopnCD+Q65
         TrM+VGKbxqldj35YQbtwbHmbb1VkrK9CmgIr0lrO1d9aOyWuAQnHWQw87uWhCOgKpmwl
         WShPwnqZ06D+9zPxMC7+02y0M07Q3vPWLmntif/8OFdh2oK4f3lYSlOZvRzIr3NynJo2
         XBDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=1hxW1EGVkY2JeE6b+2heOI5s0Cr26hXM37u0kOu84ew=;
        b=X8E7u39ykvLpLiqcopeyGXzsWfnSQV55ss8M1tKAXPxG0P8kNXiEo1r1m4ixesALMF
         difgqt4oPcBciB5u8Je0mm7sY3zOa8/H1tAIeJNDSP6vPC9c2vLJQvXO0YdWinSBqxPC
         uxw7xgHaDsoBWNJOFx6DluLd1yBjN0lZrULmd1SVqB4pEZgIpMZ1ePGNUxh3eZMvN56U
         veMaIkOmaMdJedCQpMxmVi9+ZCwkGq94HGElDDG8R6nqlhVOcHc/WBAldgx6CvrSYw4C
         9O5naoQ3MzL/g4FrK6v3TmT/ig4SYietL562MhLOxyCMKz280t9C/ksGcI3IoJLNj9KG
         POPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=7EC0WjPj;
       spf=neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id l20-20020a05663814d400b00314383860f0si670703jak.4.2022.03.01.13.24.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Mar 2022 13:24:00 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id b13so13989310qkj.12
        for <linux-ntb@googlegroups.com>; Tue, 01 Mar 2022 13:24:00 -0800 (PST)
X-Received: by 2002:a37:5d2:0:b0:5e9:5876:7f0 with SMTP id 201-20020a3705d2000000b005e9587607f0mr14619695qkf.4.1646169840382;
        Tue, 01 Mar 2022 13:24:00 -0800 (PST)
Received: from localhost ([2605:a601:a665:9200:a5cf:2f00:e792:9b5b])
        by smtp.gmail.com with ESMTPSA id g2-20020a37e202000000b00607e264a208sm7072611qki.40.2022.03.01.13.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 13:24:00 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 1 Mar 2022 16:23:59 -0500
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for 5.17
Message-ID: <Yh6O7wmp8HCjxOn3@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=7EC0WjPj;       spf=neutral (google.com: 2607:f8b0:4864:20::72d is
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

Hello Linus,
Here are a few NTB bug fixes for 5.17.  Please consider pulling them.

Thanks,
Jon



The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.17-bugfixes

for you to fetch changes up to 9b818634f8e7e0bca3386a50b1fada7a49036408:

  MAINTAINERS: update mailing list address for NTB subsystem (2022-02-02 17:34:18 -0500)

----------------------------------------------------------------
Bug fixes for sparse warning, intel port config offset, and a new
mailing list

----------------------------------------------------------------
Dave Jiang (2):
      ntb: intel: fix port config status offset for SPR
      MAINTAINERS: update mailing list address for NTB subsystem

Gustavo A. R. Silva (1):
      NTB/msi: Use struct_size() helper in devm_kzalloc()

 MAINTAINERS                        |  8 ++++----
 drivers/ntb/hw/intel/ntb_hw_gen4.c | 17 ++++++++++++++++-
 drivers/ntb/hw/intel/ntb_hw_gen4.h | 16 ++++++++++++++++
 drivers/ntb/msi.c                  |  6 ++----
 4 files changed, 38 insertions(+), 9 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/Yh6O7wmp8HCjxOn3%40athena.kudzu.us.
