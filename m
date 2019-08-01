Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3247D7E49D
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 23:06:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ACFBD1690;
	Thu,  1 Aug 2019 21:06:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D294E22DA
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 20:08:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 711588AB
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 20:08:20 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 201so53022529qkm.9
	for <bridge@lists.linux-foundation.org>;
	Thu, 01 Aug 2019 13:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:message-id:from:to:cc:subject:in-reply-to:references
	:mime-version:content-disposition:content-transfer-encoding;
	bh=B+yDfdKT+RmatLe61Ax4/UEmkLt8JT8gE8mDRLs1ASo=;
	b=F2DtJQPVW600MwUqAoGNDBJim0olwalXuP0oaVzNa0fuigELEEjv1TPS9O2t4zW1XQ
	pXpruzdZOB/VBi3a/Ru2xZqOapjbUY0dPt4Dayk+xHSRgZZVajTvGk70Z2HIA5Y5cMwl
	ambxZXgnsb/qDkp7nYq3cJFgRehXf/PvlySs2VBmdpH+M5ZDNJxP9VCfgdVNdKV17ZGT
	ES8W4E3m+l2EhVQavzX1ZQ+2ImO1izjQsAj5HIa8nYb0s2XUwvrhRfs4a+oxfu/a5Z1X
	VDRc8KtlnltBx/XBJhhIbBM1tf19KqXDgLfg7P/EJ+wO60b9kMWEw1/tLyFLRY/BaNsl
	MQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
	:references:mime-version:content-disposition
	:content-transfer-encoding;
	bh=B+yDfdKT+RmatLe61Ax4/UEmkLt8JT8gE8mDRLs1ASo=;
	b=IK+n7Wptr0QRdcW7GJW6Ug2XiNMM9z8/eBE+YOfNtLN8LkWmaUbr8mqSDcukcCod8Z
	4s/jCgxHiIHzniC1w85/9qOk88buJXRToeHrHrAOrgoidMz3/AlD9h56rMzOaBrjepjw
	4VBebAoO8W8qtd9JVZ12PnTbdP8Pctt9T7CXg8bWYv90mkVwd+VaPw7mXMMvSlkgsY4x
	c1C8iuK6dHTcfmh+c2d2uLlP7oa8rsrQePK5FKeHatGmmbi5qNJ1QSP0lXJtWdaQkB8n
	6118L4YyZWiAEKEMWxBN9aCwgtI6uz4leu/Z9L+ulncU7nBdM6PDtINa05Fm21fEDg1l
	zKhQ==
X-Gm-Message-State: APjAAAWXn+n1oZpal30rYM0Vc3CuGLREEsSQvPN6f+/TYZK0tybIXhCW
	VFixM+0QjIulAlzw+KjXLpU=
X-Google-Smtp-Source: APXvYqxqpChOnoBfs+GBxQM4vK6z+sYjBISy2ym7G3Sq1RF3r0v+c1tE3tcbulGCOi3Xo0MFPdQASA==
X-Received: by 2002:a37:680e:: with SMTP id d14mr88871406qkc.207.1564690099390;
	Thu, 01 Aug 2019 13:08:19 -0700 (PDT)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
	[184.163.105.249]) by smtp.gmail.com with ESMTPSA id
	q73sm17611144qke.90.2019.08.01.13.08.18
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 13:08:18 -0700 (PDT)
Date: Thu, 1 Aug 2019 16:08:17 -0400
Message-ID: <20190801160817.GB9619@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20190801194801.rqv5jvb5vxjo2dor@soft-dev3.microsemi.net>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
	<20190801151739.GB32290@t480s.localdomain>
	<20190801194801.rqv5jvb5vxjo2dor@soft-dev3.microsemi.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, allan.nielsen@microchip.com,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Hi Horatiu,

On Thu, 1 Aug 2019 21:48:02 +0200, Horatiu Vultur <horatiu.vultur@microchip.com> wrote:
> > I'm a bit late in the conversation. Isn't this what you want?
> > 
> >     ip address add <multicast IPv4 address> dev br0 autojoin
> > 
> 
> Not really, I was looking in a way to register the ports to link layer
> multicast address. Sorry for the confusion, my description of the patch
> was totally missleaning.
> 
> If you follow this thread you will get a better idea what we wanted to
> achive. We got some really good comments and based on these we send a
> RFC[1]. 

OK great! Keep me in the loop, I enjoy bridge and multicast very much ;-)


Thanks,

	Vivien
