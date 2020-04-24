Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B8C1B7775
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 15:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AAFD203E8;
	Fri, 24 Apr 2020 13:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQwOZr0kG7hS; Fri, 24 Apr 2020 13:49:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B8109203E5;
	Fri, 24 Apr 2020 13:49:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F434C1D7F;
	Fri, 24 Apr 2020 13:49:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0E3A2C0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08E358815C
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74rDF3sR4Cko for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 13:49:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B92788154
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:49:17 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id x23so7759369lfq.1
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 06:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=sDwVLjRBMPWU6wEqJr0n/7TaaBKOSB8AM8QuUjXpRFg=;
 b=PFmeDn82LqDvfQ32uAq3qNbtzdFMdsCBiPHffUqPmJU35TDpn6p3vUhwu4z9ydA+1w
 bOCnHg07doepYRJy1qQfHA8PfJfz32xzpmPG8epQ8gKLESNSrZIpLVh1OGxeZrRzmyUs
 Akipi/z1KazdqSXjtV6JSC9rJJfEXqhyGF7Tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sDwVLjRBMPWU6wEqJr0n/7TaaBKOSB8AM8QuUjXpRFg=;
 b=uPXYyF3/479JKN7QT/7lbEBe81CtLFqKbcnQ9PXI/51lHsEat/UBEqUj8fe0BHzwre
 QKgQD7yO5LuZkxITCInqNg5l+U4fnAmLapd+rUDGtVRRrY9AIyir3svFNblVbitiXPFx
 Hr3tLMNiBMkGv29OG4Ld4KIGErXMwYDIOAo7MfsjKDM+NQbJG9K6evU8g7aZvkYaPrIR
 a2eCugjkxCcSNqujqKbakxs2uxbBmkdr2yvhJ/zkWe6wGb+z+Ow5JvYND/X3l3bgoac+
 Yyy9vof87J9p1xrcOtQcc54UQlPNQYsRN2VgRqrrNcqed4mz/uTTo8PudGBukr/2GdRs
 AI+w==
X-Gm-Message-State: AGi0PuYuvTdPW2Op8AiqSxeQ44vPUTsct4qqXFSqga97DNLNgylAJfS8
 8JCTw0N/+M++mra/ZQaEmJISyEGzF/OyXA==
X-Google-Smtp-Source: APiQypK0WfE0K8h4OMIWzRhDwx1eUUgoHfJYt5KeqpvgHE+uplakMIQw54Kb+bQu6g5+TtSK95qO8w==
X-Received: by 2002:ac2:5dcf:: with SMTP id x15mr6231405lfq.3.1587736154353;
 Fri, 24 Apr 2020 06:49:14 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b2sm4504085lfi.14.2020.04.24.06.49.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 06:49:13 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
 <20200422161833.1123-11-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <4c2200b5-5173-eac3-1cf5-14538a0b5d71@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 16:49:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422161833.1123-11-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 10/11] bridge: mrp: Integrate MRP
 into the bridge
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

On 22/04/2020 19:18, Horatiu Vultur wrote:
> To integrate MRP into the bridge, the bridge needs to do the following:
> - detect if the MRP frame was received on MRP ring port in that case it would be
>   processed otherwise just forward it as usual.
> - enable parsing of MRP
> - before whenever the bridge was set up, it would set all the ports in
>   forwarding state. Add an extra check to not set ports in forwarding state if
>   the port is an MRP ring port. The reason of this change is that if the MRP
>   instance initially sets the port in blocked state by setting the bridge up it
>   would overwrite this setting.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_device.c  |  3 +++
>  net/bridge/br_if.c      |  2 ++
>  net/bridge/br_input.c   |  3 +++
>  net/bridge/br_netlink.c |  5 +++++
>  net/bridge/br_private.h | 31 +++++++++++++++++++++++++++++++
>  5 files changed, 44 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


