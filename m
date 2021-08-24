Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 753873FEACA
	for <lists.bridge@lfdr.de>; Thu,  2 Sep 2021 10:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D74DC61455;
	Thu,  2 Sep 2021 08:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oytCBQUPmJnz; Thu,  2 Sep 2021 08:44:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 99A4160745;
	Thu,  2 Sep 2021 08:44:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5F2A5C001F;
	Thu,  2 Sep 2021 08:44:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4DE3C000E
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 22:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B9394011B
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 22:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Si_IK9I8mWUv for <bridge@lists.linux-foundation.org>;
 Tue, 24 Aug 2021 22:16:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 446C040001
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 22:16:06 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 j14-20020a1c230e000000b002e748b9a48bso2580538wmj.0
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 15:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=bqYee/6ld0ln1QDz/d5FKD7rAylctSHuck8A3MH6AEU=;
 b=REPW9j5igPAi6YKII+JzIr5WSQP8hJn1ZSRO0gN5DQHRr7d+/Rx0i4uhVca/IYB32b
 smxCPueGg7m05O7oW5Oh5tGe/DPLlFMKhR1GF/aKavDDsMqpepFw/vfyRZ8BRiHch9nY
 93k+stIAr/g1aMDD4bxn2UPrMJIVcqpYCDVWzOwyiceLgWqZMaL8eNoNiCXOs4Lh2Buu
 1DAY4AT5UTu10cK40tqphCOelqZUiUz/V9PPXU7Q5oYCVlrnUjrJ7qIr9ZUXHmIHTTlJ
 oFmCKctHRsZaCCYYZ1erbE8xAZD4hqe5MdlJqNW+UQfq/q2+G4cfEYwVVS0BX5GJ4dOJ
 7BDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=bqYee/6ld0ln1QDz/d5FKD7rAylctSHuck8A3MH6AEU=;
 b=DFdVLAaewkiQ3ibgB+hhLsVwOx68QP9A8C3mF8rWWEvb99mGdMDu3XXrMi7vVu3y0i
 cbhHlJfO4WemqUkSngzQH6KOqHk7ejxz9akZ+5AWDe10EcS/KbSECTdpFoQIemfMKYh5
 Fn62XpM8me4JIViTpQnmmCBuQzAYk8K/VXYNcvbeuZT27L7c3OMvoBKqGsgn1dbcKwzT
 HZ0aS2XPK+uqf9ZqYiwIFGAb+os0U/MlvtP7QOQISOZYftprEFoVgZTHrh7nfuFTdVnk
 zwyVgQTYFb7VtVhOAdYpm5uMn22dx6JSmp+uhgKuBUUvGp+geccNfnKVxvy5P6nBOuZ/
 wF/g==
X-Gm-Message-State: AOAM533P9jt1HfKfhQbhF+CFbqYtgOZudaAJM7ID9v51brTyBW/23tP6
 sF5MZOblrAESD5CwlSp7OL1gu0P6J1QrmnnxdlU=
X-Google-Smtp-Source: ABdhPJxPeve0Wqe+pp+w0RpzKfDhcvjdaWb2sOVl7XVBip+Astm6Qit4KRjjq3z9JcmXkKqWnFTb5D0BADyw8RRgQJc=
X-Received: by 2002:a1c:1dcc:: with SMTP id d195mr6157176wmd.85.1629843364536; 
 Tue, 24 Aug 2021 15:16:04 -0700 (PDT)
MIME-Version: 1.0
From: Esther Faride Chau Durazo <takpkyra666@gmail.com>
Date: Tue, 24 Aug 2021 01:11:36 -0700
Message-ID: <CABH6LpA+aSYEPB19f4zm2DAJdSiO54+OEs2+TB6r0W9jPgpneg@mail.gmail.com>
To: dqfext@gmail.com
Content-Type: multipart/alternative; boundary="000000000000c8665c05ca557a92"
X-Mailman-Approved-At: Thu, 02 Sep 2021 08:44:34 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, olteanv@gmail.com,
 davem@davemloft.net
Subject: Re: [Bridge] Bridge port isolation offload
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--000000000000c8665c05ca557a92
Content-Type: text/plain; charset="UTF-8"



--000000000000c8665c05ca557a92
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--000000000000c8665c05ca557a92--
