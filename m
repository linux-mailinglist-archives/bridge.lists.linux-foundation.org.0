Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D42891AEB0E
	for <lists.bridge@lfdr.de>; Sat, 18 Apr 2020 11:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF91C2042D;
	Sat, 18 Apr 2020 09:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYfaqymMgk6i; Sat, 18 Apr 2020 09:01:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C67352041C;
	Sat, 18 Apr 2020 09:01:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 965CEC0172;
	Sat, 18 Apr 2020 09:01:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 791EFC0172
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 09:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67E2888231
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 09:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBcNC3ZvvdYk for <bridge@lists.linux-foundation.org>;
 Sat, 18 Apr 2020 09:01:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E7188829B
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 09:01:07 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 131so3741724lfh.11
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 02:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=v2r1LNfcfZSMQjP8dr2xBneKdKcMoniQ02EHOw8mPkg=;
 b=Qehbzq/lwAQz4mxTlNzPxp6RB0mgqSy6uthfto33Yze71yukx+lvwUC0wtejhWPCrB
 ZR61llSdswVXVylEAI0rCx9MSdy836jyhFHESLcLn/3O6xufpGPw8Q3mEhjvTON1BAQn
 OWcR3LP0XXCqINT2trWlumMb9ADMtQLqZnEfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=v2r1LNfcfZSMQjP8dr2xBneKdKcMoniQ02EHOw8mPkg=;
 b=GWPShD7GgTyZwvTIvC3LVo6NnTHl8VoGpUq49A4sIjydMT9ydmNeFo712iAsI1PNxT
 HK1tvWkSuMVEKPHkuITtAKUKUm0JHYyeGwagclueGmNjB0EOcpvE/c6jutoKHs5N5zrQ
 0hyw/Lr0UvWMyNDRXcA4L615fwydiT7PDdcC0uv3XC0wA510BwoD0S/+1aZRzG8sn6Ny
 vrklKGdFQqLTWFtxOuj1b7NGdQPz62SInt/3UW/ngaaLJoWMZk5d397LoaTqhpK/zQ1x
 kzsRemlm/ibE2CO/dXKKm1iLUFSrAZ5J0yFIyHezFXGLiuaSdViq/JvgMMuCR1ZnwCJj
 iBLg==
X-Gm-Message-State: AGi0PubO2QUd7CMif1/GmNvCEeV03joyrKvAMXs12v5g6copx2DeaXyt
 gHViOrrTnoOmnTuvXhKOQo+unw==
X-Google-Smtp-Source: APiQypJB7StCrR9XTUXa/d7LPRLIwRuUYoumhbZUVEivdD5SyjUZLN5f+omoQA5zGMpiIA17F4dZcw==
X-Received: by 2002:a19:4014:: with SMTP id n20mr4332985lfa.6.1587200465617;
 Sat, 18 Apr 2020 02:01:05 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id q16sm6063952ljj.23.2020.04.18.02.01.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 02:01:04 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <59ccd697-3c97-207e-a89d-f73e594ec7eb@cumulusnetworks.com>
Date: Sat, 18 Apr 2020 12:01:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414112618.3644-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v5 0/9] net: bridge: mrp: Add support
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

On 14/04/2020 14:26, Horatiu Vultur wrote:
> Media Redundancy Protocol is a data network protocol standardized by
> International Electrotechnical Commission as IEC 62439-2. It allows rings of
> Ethernet switches to overcome any single failure with recovery time faster than
> STP. It is primarily used in Industrial Ethernet applications.
> 
> Based on the previous RFC[1][2][3][4], the MRP state machine and all the timers
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

Hi Horatiu,
The set still has a few blocker issues (bisectability, sysfs error return, use of extack)
and a few other cleanup tasks as I've noted in my replies to the respective patches.
I think with those out of the way you can submit it for inclusion.

Cheers,
 Nik




