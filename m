Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 906B84E54CA
	for <lists.bridge@lfdr.de>; Wed, 23 Mar 2022 16:03:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C28CD61348;
	Wed, 23 Mar 2022 15:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-AuasVkQvuM; Wed, 23 Mar 2022 15:03:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 44CC661357;
	Wed, 23 Mar 2022 15:03:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7665C0073;
	Wed, 23 Mar 2022 15:03:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE12CC000B
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 15:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C888241B5E
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 15:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMVE0PR1_9cy for <bridge@lists.linux-foundation.org>;
 Wed, 23 Mar 2022 15:03:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7412341B5A
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 15:03:49 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id 17so2221196ljw.8
 for <bridge@lists.linux-foundation.org>; Wed, 23 Mar 2022 08:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=NLLuXYwkRNkVyFDY51FXyNkaCFkba+6fr2X11U+G9DE=;
 b=YRs40Gj0HQMshTwfj0Y/+Jq+4v31gsdfBF16Dg9Cp4Tv3TtN42HlSBHk4V2d5f7ldX
 PvE6gw0UlWv2VEcHw47aT25u7AEt2DyrIO03eKXeJRwRYKF64NSn1qkfPTSKqAz1dVXi
 Iel+0wgbe3azPvZZXdopxJ72zUdTaMwjTPWAO0of/dKZRmUsdOsWe5RJ2EjGW1LK3kUL
 Vhgh+0P5ZkdRbngfjnhq7XC9eHMLvo3HUlkWxSEzVVn4O4xSHrDBqDksPFty/DmO+QoO
 tj+l/aPSWR3VYcluOcmitwH+cC4g0LMfvpX7UO/NJPjlm2HSk/GugBhwZI6e3hyf4zei
 BMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=NLLuXYwkRNkVyFDY51FXyNkaCFkba+6fr2X11U+G9DE=;
 b=ciGpryiqx+7cWnVI7w4x2jc8p8zT1e+Vgk8F1vMXKb9qAHvfm8gbYhUri7Fl7cOrib
 1MXjRS+XTq1m6HvTDF0tyyFZ+IjDb6A6LrWRBR+eY5xY4UF2Zi4tCHP+G9/6Llz+dY/g
 6LI4QzKlMrtqJfTdvr5ZQkwlrONaDxw+oOqwvp9S2Ngu6pIpkRdMbeD4EKrr+SkYggF2
 ZZBwYaOFeU2dsNoBeTQ53ILW4rn36vCX/IU/pFco/hsyoH5xRT7FGupYMBcL0sLM/e4R
 gmHIgxaap0oVjjuBw1GSf4jvfLnKzdbT70HPDOBp9h9LUr21qk2KNa7/hHvqBSQ/pzHm
 2OwA==
X-Gm-Message-State: AOAM530J7MuqTNeN8eH4xmAEVe6TZS2NpA/hM4NLBw4qmEkHewehw0II
 AgVWMXCCambsrRJzOboyX5k=
X-Google-Smtp-Source: ABdhPJy0XQ28+VtrhdgFCZAFvWjTQlsczCuWe+fu8QEBcCgfGJlmPu4hBcpBggIIQ5nC2+CRlpGAAw==
X-Received: by 2002:a2e:a7ca:0:b0:249:862b:525 with SMTP id
 x10-20020a2ea7ca000000b00249862b0525mr301404ljp.491.1648047827365; 
 Wed, 23 Mar 2022 08:03:47 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 p7-20020ac24ec7000000b00443d65ea161sm13170lfr.291.2022.03.23.08.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Mar 2022 08:03:46 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220323144304.4uqst3hapvzg3ej6@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
Date: Wed, 23 Mar 2022 16:03:43 +0100
Message-ID: <86ils4vhgw.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On ons, mar 23, 2022 at 16:43, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
>> >> Does someone have an idea why there at this point is no option to add a
>> >> dynamic fdb entry?
>> >> 
>> >> The fdb added entries here do not age out, while the ATU entries do
>> >> (after 5 min), resulting in unsynced ATU vs fdb.
>> >
>> > I think the expectation is to use br_fdb_external_learn_del() if the
>> > externally learned entry expires. The bridge should not age by itself
>> > FDB entries learned externally.
>> >
>> 
>> It seems to me that something is missing then?
>> My tests using trafgen that I gave a report on to Lunn generated massive
>> amounts of fdb entries, but after a while the ATU was clean and the fdb
>> was still full of random entries...
>
> I'm no longer sure where you are, sorry..
> I think we discussed that you need to enable ATU age interrupts in order
> to keep the ATU in sync with the bridge FDB? Which means either to
> delete the locked FDB entries from the bridge when they age out in the
> ATU, or to keep refreshing locked ATU entries.
> So it seems that you're doing neither of those 2 things if you end up
> with bridge FDB entries which are no longer in the ATU.

Right, there was much that needed my attention, so after the other
issues are taken care of, I can focus on this. So I thought there was
some general machanism in place already, but I see that Ineed to enable
the IntOnAgeOut interrupt and handle ATU age out violations.
