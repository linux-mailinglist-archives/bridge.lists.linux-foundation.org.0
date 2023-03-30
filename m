Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DBB6D05FD
	for <lists.bridge@lfdr.de>; Thu, 30 Mar 2023 15:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CC2460B0B;
	Thu, 30 Mar 2023 13:10:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC2460B0B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=q8EbuTS0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuITCfahaz08; Thu, 30 Mar 2023 13:10:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E73E160AFC;
	Thu, 30 Mar 2023 13:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E73E160AFC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D3BAC008C;
	Thu, 30 Mar 2023 13:10:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79A6DC002F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 13:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5350B400EA
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 13:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5350B400EA
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=q8EbuTS0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id de8MrT49o_bE for <bridge@lists.linux-foundation.org>;
 Thu, 30 Mar 2023 13:09:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8D1740151
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8D1740151
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 13:09:58 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id o2so18016068plg.4
 for <bridge@lists.linux-foundation.org>; Thu, 30 Mar 2023 06:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680181798;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WCALfOMUCA+7cbkFzE5ClFTbOlYcV+OCvi/3vd2QpzI=;
 b=q8EbuTS0Rvsdu2umDVcsX21gG7WlwBzQRSqG+glphuDbA68bBDGtsvmT3P4wfKGP/6
 ksI2QycwJ29BgXgpZszGd2yR0nsJiBoy7uSSOYvh85ySy/olqUxqsPlXQM4MEH0ETDj/
 Uw+uVa11ka9CvyYadaY/ppOZQYZTFMDLdAOO/4yfQZY4Lci9qlzLc7ZQUKcH8hD1kDq0
 eADo2mZ+huDKbIocDnksJPdZc3Kjj+S+j7v6iNX5qjWpz1lIj74uGkJ7fjiupJtogC0T
 szUgAORRQQJsjzinKN0/7PImycWiK1SPZlTDYgNbUpsEVOWW+wIMqJScJUQ5IMBbm+WY
 Vo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680181798;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WCALfOMUCA+7cbkFzE5ClFTbOlYcV+OCvi/3vd2QpzI=;
 b=xD2OsLL6QzJjO0hCjIUbdOXbauun+PS0zAw3jJAQw6+QW1vyh++mEmoFW6w6OyQP6m
 gjbe8aN5YhNWrjdadtBcpEGCrPk6ltOBd7/g49gvcQCwdU+dBivhI82vE4lXX8Qfe5pJ
 BKVk2utUvh1SJOd/eONIr/0anbXpKZb9t1pPaRgx2AjiiYjP24FWa1A8x1OEdmk2CTOA
 cvg7oqGFi+9RFoJuVb20xvhYEiK6Uf3pSa2+G6AIOq7/E4E2NVwq8BImsSOjlyrgWGKo
 OLBYVWyuW4tkZ01JWyr8zNBz9WCcHLNhGGqhRRuDL/lz/ARuC0I7EzfUP/YSmWZFiHRq
 YjjA==
X-Gm-Message-State: AAQBX9fGIrlKs2fBEZ1QP/T1KIKKzWWAD7cdY5kbCWvWrBsOpDL/9ZXm
 DGWdRaV01VUFYT5hGN/pR1c=
X-Google-Smtp-Source: AKy350ZW/GFX58WiadMJbKuotQrVNunP5H2QYeW0YokOfcetmboxpxgezstrTiQ7wxDpKxZnD/BZWw==
X-Received: by 2002:a17:902:ce8e:b0:19e:2fb0:a5d9 with SMTP id
 f14-20020a170902ce8e00b0019e2fb0a5d9mr6584147plg.32.1680181798039; 
 Thu, 30 Mar 2023 06:09:58 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 w22-20020a170902a71600b001992e74d055sm8707635plq.12.2023.03.30.06.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 06:09:57 -0700 (PDT)
Date: Thu, 30 Mar 2023 16:09:36 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230330130936.hxme34qrqwolvpsh@skbuf>
References: <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
 <20230327160009.bdswnalizdv2u77z@skbuf>
 <87pm8tooe1.fsf@kapio-technology.com>
 <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
 <20230328114943.4mibmn2icutcio4m@skbuf>
 <87cz4slkx5.fsf@kapio-technology.com>
 <20230330124326.v5mqg7do25tz6izk@skbuf>
 <87wn2yxunb.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wn2yxunb.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Thu, Mar 30, 2023 at 02:59:04PM +0200, Hans Schultz wrote:
> On Thu, Mar 30, 2023 at 15:43, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Tue, Mar 28, 2023 at 09:45:26PM +0200, Hans Schultz wrote:
> >> So the solution would be to not let the DSA layer send the
> >> SWITCHDEV_FDB_OFFLOADED event in the case when the new dynamic flag is
> >> set?
> >
> > I have never said that.
> 
> No, I was just thinking of a solution based on your previous comment
> that dynamic fdb entries with the offloaded flag set should not be aged
> out by the bridge as they are now.

If you were a user of those other drivers, and you ran the command:
"bridge fdb add ... master dynamic"
would you be ok with the behavior: "I don't have dynamic FDB entries,
but here's a static one for you"?
