Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C51324C0E64
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 09:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF3C81BB0;
	Wed, 23 Feb 2022 08:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cf-eHy9AkaPT; Wed, 23 Feb 2022 08:41:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E495E824B4;
	Wed, 23 Feb 2022 08:41:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B226C0073;
	Wed, 23 Feb 2022 08:41:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8D6EFC0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 08:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AA1840180
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 08:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJo0IredmFUU for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 08:41:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 766A440012
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 08:41:05 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id 29so13813934ljv.10
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 00:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9b1HVsojboQfokDHRf6eoAxjmKnPdoUTHloBjMfMN0I=;
 b=n4oeCie4e9JgX4lIDH7g4gOm8UDlE5WbJbUx9faT/ukECA6YIt1okz6ault6htyU7/
 Fwyu9YzXEnfC4XgTyaQs65sWRajFo1uXUwykGQfv6pyNBdr7ydH87wgV4eL23fGL0XrE
 GFhHsAoot134PCxj7R4DK74PdQOSPjCaRd+X/yh4WSjqYkJfuhl+5Q+nvyBg1cRcS06c
 QixHgGRKLlX+6haogzQeSMI4leJsO5mBseEF5sQoALvriD9B5OtYXiQz8p3KB13EUEwe
 d2u7CKDoQoDvvmGfSWhCtLP0CS5BiOnP5lZRtK48ozT9KJttmUqWbqx64bTmHFf1WRoP
 iYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9b1HVsojboQfokDHRf6eoAxjmKnPdoUTHloBjMfMN0I=;
 b=supK8qGZRKEcrNWTo9jcrpoXo5Mnod4aAuDfWwALNArU1W9G8rfUJSx1TODntMExg2
 Gt8NwfXsNlGhjNkKFkKNOZIJ3NfbemcDzx306dFra7RGGKze0lqZWOUlsZF3wownLnpo
 W3l6ivqQLjxdAjHDlxNiZz98+vKxfAl+bpm3bQ3sRT/Hh1nq7C2ndQXXxl3CmNUmixNz
 9eaowGMh9RIiRiugide+AcrA2U615rPtMUQ9Cj+g0kAALErdFlMGJ31ijwUdkdfKCSAQ
 A6+xgUC7tv+FbGsGZCi1Wd9teZyVZjJdGXgJ4wilOYczeyFlNbnrtoxqiNz5A/T5D0fW
 N05A==
X-Gm-Message-State: AOAM530txYMFOoe7LyAMy+Q/7+ETVjue9ymcUrk4Y7Y5D7HA+HrCy5FB
 o9SEm5CX0/S+HLHuzxkDNPs=
X-Google-Smtp-Source: ABdhPJw+wy6hx52xkZV0dN0kRBGYEhCPd2uQDJcmwKeWB5sF5PJ22LcsceCBzFHTV3r3mh2LiIsCAw==
X-Received: by 2002:a2e:91d7:0:b0:245:fce2:4551 with SMTP id
 u23-20020a2e91d7000000b00245fce24551mr13968389ljg.446.1645605663309; 
 Wed, 23 Feb 2022 00:41:03 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id o18sm770984ljp.104.2022.02.23.00.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 00:41:02 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220222111523.030ab13d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
 <20220222111523.030ab13d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Wed, 23 Feb 2022 09:40:59 +0100
Message-ID: <86y222vuuc.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 0/5] Add support for locked bridge
 ports (for 802.1X)
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

On tis, feb 22, 2022 at 11:15, Jakub Kicinski <kuba@kernel.org> wrote:
> On Tue, 22 Feb 2022 14:28:13 +0100 Hans Schultz wrote:
>> This series starts by adding support for SA filtering to the bridge,
>> which is then allowed to be offloaded to switchdev devices. Furthermore
>> an offloading implementation is supplied for the mv88e6xxx driver.
>> 
>> Public Local Area Networks are often deployed such that there is a
>> risk of unauthorized or unattended clients getting access to the LAN.
>> To prevent such access we introduce SA filtering, such that ports
>> designated as secure ports are set in locked mode, so that only
>> authorized source MAC addresses are given access by adding them to
>> the bridges forwarding database. Incoming packets with source MAC
>> addresses that are not in the forwarding database of the bridge are
>> discarded. It is then the task of user space daemons to populate the
>> bridge's forwarding database with static entries of authorized entities.
>> 
>> The most common approach is to use the IEEE 802.1X protocol to take
>> care of the authorization of allowed users to gain access by opening
>> for the source address of the authorized host.
>> 
>> With the current use of the bridge parameter in hostapd, there is
>> a limitation in using this for IEEE 802.1X port authentication. It
>> depends on hostapd attaching the port on which it has a successful
>> authentication to the bridge, but that only allows for a single
>> authentication per port. This patch set allows for the use of
>> IEEE 802.1X port authentication in a more general network context with
>> multiple 802.1X aware hosts behind a single port as depicted, which is
>> a commonly used commercial use-case, as it is only the number of
>> available entries in the forwarding database that limits the number of
>> authenticated clients.
>> 
>>       +--------------------------------+
>>       |                                |
>>       |      Bridge/Authenticator      |
>>       |                                |
>>       +-------------+------------------+
>>        802.1X port  |
>>                     |
>>                     |
>>              +------+-------+
>>              |              |
>>              |  Hub/Switch  |
>>              |              |
>>              +-+----------+-+
>>                |          |
>>             +--+--+    +--+--+
>>             |     |    |     |
>>     Hosts   |  a  |    |  b  |   . . .
>>             |     |    |     |
>>             +-----+    +-----+
>> 
>> The 802.1X standard involves three different components, a Supplicant
>> (Host), an Authenticator (Network Access Point) and an Authentication
>> Server which is typically a Radius server. This patch set thus enables
>> the bridge module together with an authenticator application to serve
>> as an Authenticator on designated ports.
>> 
>> 
>> For the bridge to become an IEEE 802.1X Authenticator, a solution using
>> hostapd with the bridge driver can be found at
>> https://github.com/westermo/hostapd/tree/bridge_driver .
>> 
>> 
>> The relevant components work transparently in relation to if it is the
>> bridge module or the offloaded switchcore case that is in use.
>
> You still haven't answer my question. Is the data plane clear text in
> the deployment you describe?

Sorry, I didn't understand your question in the first instance. So as
802.1X is only about authentication/authorization, the port when opened
for a host is like any other switch port and thus communication is in
the clear.

I have not looked much into macsec (but know ipsec), and that is a
crypto (key) based connection mechanism, but that is a totally different
ballgame, and I think it would for most practical cases require hardware 
encryption.
