Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DED1980E0
	for <lists.bridge@lfdr.de>; Mon, 30 Mar 2020 18:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BCD7022882;
	Mon, 30 Mar 2020 16:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8nDOJ+NAzChy; Mon, 30 Mar 2020 16:21:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 6B94520420;
	Mon, 30 Mar 2020 16:21:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C71FC07FF;
	Mon, 30 Mar 2020 16:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45252C07FF
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BB7620420
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MlsAKoQnmfZV for <bridge@lists.linux-foundation.org>;
 Mon, 30 Mar 2020 16:21:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B7A82010B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:21:47 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id q5so14687028lfb.13
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 09:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ceRQl/rDBk6AZGZV87hR1KyptG7t3Kf+Og5g8l3kQ9Y=;
 b=EGaNa2JDouvflDLK16jMocP/xa7o58nL6cBYI8lu6B771+YtUHoDF+JKGHZXWYU25f
 KemrpG/1oHZ8O9fbqwGH3f2OkmaxKyHDIcY4/YISPKDIHyUhRIwG5eiK5GmNUU2FxDSb
 FXbpCOoCuMcMKElQAFnKuh9tEqSgC3NdDhZI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ceRQl/rDBk6AZGZV87hR1KyptG7t3Kf+Og5g8l3kQ9Y=;
 b=V3F6QS2Sk3CNJxITuUd4HSOuyFBlYxelO/ZZgRUS7LKnGEDzsrvxSxA67YqCPdhscx
 Nn72v7iL5CRfPHeZnbGcl5bfr6icBvvU7ILy0I/rDXeZVNFqkqQ8558g6DUtxrhBepNj
 sQTJTB6tU4yWCsODoAzyg0ayRt/hbPyPLQWO+rvVQdPmjqXfxIqWspRy9MrMWlQOySW/
 MzLa0ciTmXvRgcPnCa6rCVWOmMeIpHr25A3v5CtoRE9rDcN5HC5pHYv8/M07UIPhRVHR
 DLPd4rve1i4/HO+sduZDEX0V0MZ4+wNscSRdVvNpv5AyI2Yep1y/dcLDghJP1+SOUnp+
 ACdg==
X-Gm-Message-State: AGi0PuYEngjwNo8vIBBExdTPJNgg32C+5lr2rexBur8lS1s9096dfUzo
 XZSU+vaGO1SJuP7BDQUmPwRh71spb84=
X-Google-Smtp-Source: APiQypKWOw8LDmb2uLPOvbKs5U0udPyVoA5MVyhQDji/LDJzya5jSfWYhT/d4nHb1hYwUh2s9frJOQ==
X-Received: by 2002:ac2:5092:: with SMTP id f18mr8506094lfm.162.1585585305086; 
 Mon, 30 Mar 2020 09:21:45 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t144sm7981885lff.94.2020.03.30.09.21.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 09:21:43 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <15dcc261-bcbb-ec67-2d8d-4208dda45b86@cumulusnetworks.com>
Date: Mon, 30 Mar 2020 19:21:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327092126.15407-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v4 0/9] net: bridge: mrp: Add support
 for Media Redundancy Protocol(MRP)
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

On 27/03/2020 11:21, Horatiu Vultur wrote:
> Media Redundancy Protocol is a data network protocol standardized by
> International Electrotechnical Commission as IEC 62439-2. It allows rings of
> Ethernet switches to overcome any single failure with recovery time faster than
> STP. It is primarily used in Industrial Ethernet applications.
> 
> Based on the previous RFC[1][2][3], the MRP state machine and all the timers
> were moved to userspace, except for the timers used to generate MRP Test frames.
> In this way the userspace doesn't know and should not know if the HW or the
> kernel will generate the MRP Test frames. The following changes were added to
> the bridge to support the MRP:
> - the existing netlink interface was extended with MRP support,
> - allow to detect when a MRP frame was received on a MRP ring port
> - allow MRP instance to forward/terminate MRP frames
> - generate MRP Test frames in case the HW doesn't have support for this
> 
> To be able to offload MRP support to HW, the switchdev API  was extend.
> 
> With these changes the userspace doesn't do the following because already the
> kernel/HW will do:
> - doesn't need to forward/terminate MRP frames
> - doesn't need to generate MRP Test frames
> - doesn't need to detect when the ring is open/closed.
> 
> The userspace application that is using the new netlink can be found here[4].
> 

Hi Horatiu,
One issue in general - some functions are used before they're defined (the switchdev
API integration ones) patch 4 vs 7 which doesn't make sense. Also I see that the BRIDGE_MRP is used
(ifdef) before it's added to the Kconfig which doesn't make much sense either.
I think you should rearrange the patches and maybe combine some of them.

Thanks,
 Nik

