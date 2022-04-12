Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16554FD2B4
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 09:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 513AE4011C;
	Tue, 12 Apr 2022 07:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfP9-Eep7AyZ; Tue, 12 Apr 2022 07:40:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D541940116;
	Tue, 12 Apr 2022 07:40:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97C54C0084;
	Tue, 12 Apr 2022 07:40:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D590FC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B418060DE5
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPQj8H4et6cZ for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 07:40:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A4F560881
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:40:01 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id s13so23011273ljd.5
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 00:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=WtbGB7L0QDeE2I+go9zw8Bu1CtyCG18Co3yY1iUrMXY=;
 b=ZaEFBW4EII8WzlwhSzf+zKPxIRzg6pI962lGZG1WVyYyLaE2cWSS01DKRa0p7ADOkP
 NL2TyoCJnBBV+UPo4GSFISlTwDlNFNsoyohFLDRN04udEoN2euT4a5ep2pPgMeJQifl1
 CE2F4c8Fgf0dWkUYXcMRKIa4jwu15X8upnIDHH6RUFz4pglwbYf3t7ySCjN6bWS0SoWC
 MXhULNYOryUu4uB2xQp3PmgZpBuo8jL5xq1U1OUWTjI973ld/vSPFIGuLXdbIJLSddIc
 0FbIdqjCM1tm1ryeUdI/B9/V3hg4fWAjxCpzjRSh8SaqxLwQu9G1Jt/vl6gFa2glKhON
 Befw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=WtbGB7L0QDeE2I+go9zw8Bu1CtyCG18Co3yY1iUrMXY=;
 b=xQjlhEub0FIbRzTbOc02i1cG4a/ggAxyzhyM6eYnl6fUN092+8LeRFWW7RNS6iyT8C
 YC0qtQssT+H24E721Usw5Zee8Gex0UVfcFwqmSQ7AWZ2UkN3FfxKeWN0ujNY3jsn6ohZ
 xcllX7XuXwoPWN8EX156w+2SmTsgk6lZKwVw2urjfUC1Smxi2eCHOAyHZWN+INLfsc7b
 4Tj6FbHHFmYZ0Civhe+jbDtZIB+lfuE4YTGbov63yAf2FEFrjPu9GJWl9hHeMX7pm3oR
 9H19NUbaMBIj8eb2SH2vsZFwFBmRd9C9NBGW6Kl0K8pKwZaROP+NPUJ+z2hA/LuZZAjq
 NybQ==
X-Gm-Message-State: AOAM532tDf1LqFbOrJACpoxtVezv75UaxM1vu1c93W2FYnj5LI29F+zZ
 3GlcxLptWNqpoz9VK+ALjOI=
X-Google-Smtp-Source: ABdhPJzxjMniQYaT1ojKhxYXcF6wHOJPF+5Rck6NQj04F5+jVrXSytn/eFveVIMV0Mhql01RgHzFXA==
X-Received: by 2002:a2e:b989:0:b0:24a:d5a0:bfaf with SMTP id
 p9-20020a2eb989000000b0024ad5a0bfafmr23016573ljp.513.1649749199713; 
 Tue, 12 Apr 2022 00:39:59 -0700 (PDT)
Received: from wbg (h-158-174-22-128.NA.cust.bahnhof.se. [158.174.22.128])
 by smtp.gmail.com with ESMTPSA id
 o19-20020a056512053300b0046b51022557sm1396821lfc.232.2022.04.12.00.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 00:39:59 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20220411172042.prh3hy7ehpc5o34f@skbuf>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-6-troglobit@gmail.com>
 <20220411172042.prh3hy7ehpc5o34f@skbuf>
Date: Tue, 12 Apr 2022 09:39:57 +0200
Message-ID: <87k0bubvhu.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 05/13] selftests: forwarding: add
	TCPDUMP_EXTRA_FLAGS to lib.sh
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

On Mon, Apr 11, 2022 at 17:20, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> On Mon, Apr 11, 2022 at 03:38:29PM +0200, Joachim Wiberg wrote:
>> -	$ns_cmd tcpdump -e -n -Q in -i $if_name \
>> +	if [ -z $TCPDUMP_EXTRA_FLAGS ]; then
>> +		extra_flags=""
>> +	else
>> +		extra_flags="$TCPDUMP_EXTRA_FLAGS"
>> +	fi
>> +
>> +	$ns_cmd tcpdump $extra_flags -e -n -Q in -i $if_name \
>
> Could you call directly "$ns_cmd tcpdump $TCPDUMP_EXTRA_FLAGS ..." here,
> without an intermediary "extra_flags" global variable which holds the
> same content?
>
> You could initialize it just like the way other variables are
> initialized, at the beginning of lib.sh:
>
> TCPDUMP_EXTRA_FLAGS=${TCPDUMP_EXTRA_FLAGS:=}

Ah, yes of course.  Will fix in the next drop!

 /J
 
